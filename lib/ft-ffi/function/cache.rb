require_relative '../struct/glyph/rec'
require_relative '../struct/ftc_sbit_rec'
require_relative '../struct/ftc_image_type_rec'
require_relative '../struct/ftc_scaler_rec'
require_relative '../typedef/ftc_face_id'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_CMapCache
  typedef :pointer, :FTC_CMapCache
  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Manager
  typedef :pointer, :FTC_Manager

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_ImageCache
  typedef :pointer, :FTC_ImageCache
  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Node
  typedef :pointer, :FTC_Node
  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Manager
  typedef :pointer, :FTC_Manager
  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_SBitCache
  typedef :pointer, :FTC_SBitCache



  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Face_Requester
  FTC_Face_Requester = callback 'FTC_Face_Requester',
                                [:FTC_FaceID, LibraryRec.ptr(:in), :FT_Pointer, FaceRec.ptr(:out)], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_CMapCache_Lookup
  def self.CMapCache_Lookup(cache, face_id, cmap_index, char_code); end
  # FT_UInt FTC_CMapCache_Lookup( FTC_CMapCache  cache, FTC_FaceID face_id, FT_Int cmap_index, FT_UInt32 char_code)
  attach_function 'CMapCache_Lookup', 'FTC_CMapCache_Lookup',
                  [:FTC_CMapCache, :FTC_FaceID, :FT_Int, :FT_UInt32], :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_CMapCache_New
  def self.CMapCache_New(manager, acache); end
  # FT_Error FTC_CMapCache_New( FTC_Manager manager, FTC_CMapCache *acache )
  attach_function 'CMapCache_New', 'FTC_CMapCache_New', [:FTC_Manager, :FTC_CMapCache], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_ImageCache_Lookup
  def self.ImageCache_Lookup(cache, type, gindex, aglyph, anode); end
  # FT_Error FTC_ImageCache_Lookup(
  #   FTC_ImageCache  cache,
  #   FTC_ImageType   type,
  #   FT_UInt         gindex,
  #   FT_Glyph       *aglyph,
  #   FTC_Node       *anode );
  attach_function 'ImageCache_Lookup', 'FTC_ImageCache_Lookup',
                  [:FTC_ImageCache, FTC_ImageTypeRec.ptr(:in), :FT_UInt, GlyphRec.ptr(:out), :FTC_Node], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_ImageCache_LookupScaler
  def self.ImageCache_LookupScaler(cache, scaler, load_flags, gindex, aglyph, anode); end
  # FT_Error FTC_ImageCache_LookupScaler(
  #   FTC_ImageCache  cache,
  #   FTC_Scaler      scaler,
  #   FT_ULong        load_flags,
  #   FT_UInt         gindex,
  #   FT_Glyph       *aglyph,
  #   FTC_Node       *anode );
  attach_function 'ImageCache_LookupScaler', 'FTC_ImageCache_LookupScaler',
                  [:FTC_ImageCache, FTC_ScalerRec.ptr(:in), :FT_ULong, :FT_UInt, GlyphRec.ptr(:out), :FTC_Node],
                  :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_ImageCache_New
  def self.ImageCache_New(manager, acache); end
  # FT_Error FTC_ImageCache_New( FTC_Manager manager, FTC_ImageCache  *acache );
  attach_function 'ImageCache_New', 'FTC_ImageCache_New', [:FTC_Manager, :FTC_ImageCache], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Manager_Done
  def self.Manager_Done(manager); end
  # void FTC_Manager_Done( FTC_Manager  manager );
  attach_function 'Manager_Done', 'FTC_Manager_Done', [:FTC_Manager], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Manager_LookupFace
  def self.Manager_LookupFace(manager, face_id, aface); end
  # FT_Error FTC_Manager_LookupFace( FTC_Manager  manager, FTC_FaceID   face_id, FT_Face     *aface );
  attach_function 'Manager_LookupFace', 'FTC_Manager_LookupFace',
                  [:FTC_Manager, :FTC_FaceID, FaceRec.ptr(:out)], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Manager_LookupSize
  def self.Manager_LookupSize(manager, scaler, asize); end
  # FT_Error FTC_Manager_LookupSize( FTC_Manager  manager, FTC_Scaler scaler, FT_Size *asize );
  attach_function 'Manager_LookupSize', 'FTC_Manager_LookupSize',
                  [:FTC_Manager, FTC_ScalerRec.ptr(:in), SizeRec.ptr(:out)], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Manager_New
  def self.Manager_New(library, max_faces, max_sizes, max_bytes, requester, req_data, amanager); end
  # FT_Error FTC_Manager_New(
  #   FT_Library          library,
  #   FT_UInt             max_faces,
  #   FT_UInt             max_sizes,
  #   FT_ULong            max_bytes,
  #   FTC_Face_Requester  requester,
  #   FT_Pointer          req_data,
  #   FTC_Manager        *amanager );
  attach_function 'Manager_New', 'FTC_Manager_New',
                  [LibraryRec, :FT_UInt, :FT_UInt, :FT_ULong, FTC_Face_Requester, :FT_Pointer, :FTC_Manager], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Manager_RemoveFaceID
  def self.Manager_RemoveFaceID(manager, face_id); end
  # void FTC_Manager_RemoveFaceID( FTC_Manager  manager, FTC_FaceID   face_id );
  attach_function 'Manager_RemoveFaceID', 'FTC_Manager_RemoveFaceID', [:FTC_Manager, :FTC_FaceID], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Manager_Reset
  def self.Manager_Reset(manager); end
  # void FTC_Manager_Reset( FTC_Manager  manager );
  attach_function 'Manager_Reset', 'FTC_Manager_Reset', [:FTC_Manager], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_Node_Unref
  def self.Node_Unref(node, manager); end
  # void FTC_Node_Unref( FTC_Node node, FTC_Manager manager );
  attach_function 'Node_Unref', 'FTC_Node_Unref', [:FTC_Node, :FTC_Manager], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_SBitCache_Lookup
  def self.SBitCache_Lookup(cache, type, gindex, sbit, anode); end
  # FT_Error FTC_SBitCache_Lookup(
  #   FTC_SBitCache    cache,
  #   FTC_ImageType    type,
  #   FT_UInt          gindex,
  #   FTC_SBit        *sbit,
  #   FTC_Node        *anode );
  attach_function 'SBitCache_Lookup', 'FTC_SBitCache_Lookup',
                  [:FTC_SBitCache, FTC_ImageTypeRec.ptr(:in), :FT_UInt, FTC_SBitRec.ptr, :FTC_Node], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_SBitCache_LookupScaler
  def self.SBitCache_LookupScaler(cache, scaler, load_flags, gindex, sbit, anode); end
  # FT_Error FTC_SBitCache_LookupScaler(
  #   FTC_SBitCache  cache,
  #   FTC_Scaler     scaler,
  #   FT_ULong       load_flags,
  #   FT_UInt        gindex,
  #   FTC_SBit      *sbit,
  #   FTC_Node      *anode );
  attach_function 'SBitCache_LookupScaler', 'FTC_SBitCache_LookupScaler',
                  [:FTC_SBitCache, FTC_ScalerRec.ptr(:in), :FT_ULong, :FT_UInt, FTC_SBitRec.ptr(:out), :FTC_Node],
                  :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_SBitCache_New
  def self.SBitCache_New(manager, acache); end
  # FT_Error FTC_SBitCache_New( FTC_Manager manager, FTC_SBitCache  *acache );
  attach_function 'SBitCache_New', 'FTC_SBitCache_New', [:FTC_Manager, :FTC_SBitCache], :FT_Error
end