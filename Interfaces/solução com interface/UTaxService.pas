unit UTaxService;

interface

type
  ITaxService = interface
  //CTRL + SHIFT + G - GUIID
  ['{4BC42736-86AB-4FE1-B43D-BF78EB558328}']

  function Tax(const aAmount:Double) : Double;
  end;

implementation

end.
