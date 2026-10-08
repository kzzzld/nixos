{ ... }: {
  programs.helix = {
    enable = true;
    settings = {
      editor = {
      	line-number = "relative";
      	cursor-shape = {
      	  insert = "bar";
      	  normal = "underline";
      	  select = "underline";
      	};
      };
    };
  };
}
