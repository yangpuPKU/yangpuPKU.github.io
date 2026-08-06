require "minitest/autorun"
require "yaml"

class WechatContactTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  CONFIG = YAML.safe_load(File.read(File.join(ROOT, "_config.yml")), aliases: true)
  PROFILE = File.read(File.join(ROOT, "_includes", "author-profile.html"))
  SIDEBAR = File.read(File.join(ROOT, "_sass", "_sidebar.scss"))

  def wechat_block
    PROFILE.match(/\{% if author\.wechat %\}(.*?)\{% endif %\}/m)&.then { |match| match[1] }
  end

  def css_block(selector)
    SIDEBAR.match(/#{Regexp.escape(selector)}\s*\{(.*?)\n\}/m)&.then { |match| match[1] }
  end

  def test_config_contains_exact_wechat_id
    assert_equal "yp15801209763", CONFIG.dig("author", "wechat")
  end

  def test_wechat_condition_immediately_follows_complete_orcid_condition
    assert_match(
      /\{% if author\.orcid %\}.*?\{% endif %\}\s*\{% if author\.wechat %\}/m,
      PROFILE
    )
  end

  def test_wechat_block_contains_markup_icon_and_escaped_value
    block = wechat_block

    refute_nil block
    assert_includes block, '<li class="author__wechat">'
    assert_includes block, '<span class="author__wechat-trigger"'
    assert_includes block, 'class="fab fa-fw fa-weixin"'
    assert_includes block, "WeChat"
    assert_includes block, "{{ author.wechat | escape }}"
  end

  def test_wechat_block_contains_matching_accessible_tooltip_relationship
    block = wechat_block

    refute_nil block
    assert_includes block, 'tabindex="0"'
    assert_includes block, 'aria-describedby="author-wechat-tooltip"'
    assert_includes block, 'id="author-wechat-tooltip"'
    assert_includes block, 'role="tooltip"'
  end

  def test_wechat_parent_is_positioned_relative
    block = css_block(".author__wechat")

    refute_nil block
    assert_match(/position:\s*relative;/, block)
  end

  def test_tooltip_is_below_and_left_aligned_within_sidebar
    block = css_block(".author__wechat-tooltip")

    refute_nil block
    assert_match(/top:\s*100%;/, block)
    assert_match(/left:\s*1\.5em;/, block)
    assert_match(/width:\s*max-content;/, block)
    assert_match(/max-width:\s*calc\(100%\s*-\s*1\.5em\);/, block)
    assert_match(/white-space:\s*normal;/, block)
    assert_match(/overflow-wrap:\s*anywhere;/, block)
  end

  def test_tooltip_is_hidden_by_default
    block = css_block(".author__wechat-tooltip")

    refute_nil block
    assert_match(/opacity:\s*0;/, block)
    assert_match(/visibility:\s*hidden;/, block)
  end

  def test_hover_and_focus_within_reveal_tooltip
    block = SIDEBAR.match(
      /\.author__wechat:hover \.author__wechat-tooltip,\s*\.author__wechat:focus-within \.author__wechat-tooltip\s*\{(.*?)\n\}/m
    )&.then { |match| match[1] }

    refute_nil block
    assert_match(/opacity:\s*1;/, block)
    assert_match(/visibility:\s*visible;/, block)
  end
end
