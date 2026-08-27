rspamd_config:register_symbol({
  name = 'MISSING_OR_EMPTY_BODY',
  type = 'normal',
  flags = 'empty',
  score = 0.0,
  description = 'Message body is missing or empty',
  callback = function(task)
    local parts = task:get_text_parts()

    if not parts or #parts == 0 then
      return true
    end

    for _, part in ipairs(parts) do
      if not part:is_empty() then
        return false
      end
    end

    return true
  end,
})
