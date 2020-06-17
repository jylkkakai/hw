// Register NVDLA_CDMA_S_STATUS_0
#define NVDLA_CDMA_S_STATUS_0					32'h3000
#define NVDLA_CDMA_S_STATUS_0_STATUS_0_RANGE			1:0
#define NVDLA_CDMA_S_STATUS_0_STATUS_0_SIZE				2
#define NVDLA_CDMA_S_STATUS_0_STATUS_0_IDLE			2'h0
#define NVDLA_CDMA_S_STATUS_0_STATUS_0_RUNNING			2'h1
#define NVDLA_CDMA_S_STATUS_0_STATUS_0_PENDING			2'h2
#define NVDLA_CDMA_S_STATUS_0_STATUS_1_RANGE			17:16
#define NVDLA_CDMA_S_STATUS_0_STATUS_1_SIZE				2
#define NVDLA_CDMA_S_STATUS_0_STATUS_1_IDLE			2'h0
#define NVDLA_CDMA_S_STATUS_0_STATUS_1_RUNNING			2'h1
#define NVDLA_CDMA_S_STATUS_0_STATUS_1_PENDING			2'h2


// Register NVDLA_CDMA_S_POINTER_0
#define NVDLA_CDMA_S_POINTER_0					32'h3004
#define NVDLA_CDMA_S_POINTER_0_PRODUCER_RANGE			0:0
#define NVDLA_CDMA_S_POINTER_0_PRODUCER_SIZE				1
#define NVDLA_CDMA_S_POINTER_0_PRODUCER_GROUP_0			1'h0
#define NVDLA_CDMA_S_POINTER_0_PRODUCER_GROUP_1			1'h1
#define NVDLA_CDMA_S_POINTER_0_CONSUMER_RANGE			16:16
#define NVDLA_CDMA_S_POINTER_0_CONSUMER_SIZE				1
#define NVDLA_CDMA_S_POINTER_0_CONSUMER_GROUP_0			1'h0
#define NVDLA_CDMA_S_POINTER_0_CONSUMER_GROUP_1			1'h1


// Register NVDLA_CDMA_S_ARBITER_0
#define NVDLA_CDMA_S_ARBITER_0					32'h3008
#define NVDLA_CDMA_S_ARBITER_0_ARB_WEIGHT_RANGE			3:0
#define NVDLA_CDMA_S_ARBITER_0_ARB_WEIGHT_SIZE				4
#define NVDLA_CDMA_S_ARBITER_0_ARB_WMB_RANGE			19:16
#define NVDLA_CDMA_S_ARBITER_0_ARB_WMB_SIZE				4


// Register NVDLA_CDMA_S_CBUF_FLUSH_STATUS_0
#define NVDLA_CDMA_S_CBUF_FLUSH_STATUS_0					32'h300c
#define NVDLA_CDMA_S_CBUF_FLUSH_STATUS_0_FLUSH_DONE_RANGE			0:0
#define NVDLA_CDMA_S_CBUF_FLUSH_STATUS_0_FLUSH_DONE_SIZE				1


// Register NVDLA_CDMA_D_OP_ENABLE_0
#define NVDLA_CDMA_D_OP_ENABLE_0					32'h3010
#define NVDLA_CDMA_D_OP_ENABLE_0_OP_EN_RANGE			0:0
#define NVDLA_CDMA_D_OP_ENABLE_0_OP_EN_SIZE				1
#define NVDLA_CDMA_D_OP_ENABLE_0_OP_EN_DISABLE			1'h0
#define NVDLA_CDMA_D_OP_ENABLE_0_OP_EN_ENABLE			1'h1


// Register NVDLA_CDMA_D_MISC_CFG_0
#define NVDLA_CDMA_D_MISC_CFG_0					32'h3014
#define NVDLA_CDMA_D_MISC_CFG_0_CONV_MODE_RANGE			0:0
#define NVDLA_CDMA_D_MISC_CFG_0_CONV_MODE_SIZE				1
#define NVDLA_CDMA_D_MISC_CFG_0_CONV_MODE_DIRECT			1'h0
#define NVDLA_CDMA_D_MISC_CFG_0_CONV_MODE_WINOGRAD			1'h1
#define NVDLA_CDMA_D_MISC_CFG_0_IN_PRECISION_RANGE			9:8
#define NVDLA_CDMA_D_MISC_CFG_0_IN_PRECISION_SIZE				2
#define NVDLA_CDMA_D_MISC_CFG_0_IN_PRECISION_INT8			2'h0
#define NVDLA_CDMA_D_MISC_CFG_0_IN_PRECISION_INT16			2'h1
#define NVDLA_CDMA_D_MISC_CFG_0_IN_PRECISION_FP16			2'h2
#define NVDLA_CDMA_D_MISC_CFG_0_PROC_PRECISION_RANGE			13:12
#define NVDLA_CDMA_D_MISC_CFG_0_PROC_PRECISION_SIZE				2
#define NVDLA_CDMA_D_MISC_CFG_0_PROC_PRECISION_INT8			2'h0
#define NVDLA_CDMA_D_MISC_CFG_0_PROC_PRECISION_INT16			2'h1
#define NVDLA_CDMA_D_MISC_CFG_0_PROC_PRECISION_FP16			2'h2
#define NVDLA_CDMA_D_MISC_CFG_0_DATA_REUSE_RANGE			16:16
#define NVDLA_CDMA_D_MISC_CFG_0_DATA_REUSE_SIZE				1
#define NVDLA_CDMA_D_MISC_CFG_0_DATA_REUSE_DISABLE			1'h0
#define NVDLA_CDMA_D_MISC_CFG_0_DATA_REUSE_ENABLE			1'h1
#define NVDLA_CDMA_D_MISC_CFG_0_WEIGHT_REUSE_RANGE			20:20
#define NVDLA_CDMA_D_MISC_CFG_0_WEIGHT_REUSE_SIZE				1
#define NVDLA_CDMA_D_MISC_CFG_0_WEIGHT_REUSE_DISABLE			1'h0
#define NVDLA_CDMA_D_MISC_CFG_0_WEIGHT_REUSE_ENABLE			1'h1
#define NVDLA_CDMA_D_MISC_CFG_0_SKIP_DATA_RLS_RANGE			24:24
#define NVDLA_CDMA_D_MISC_CFG_0_SKIP_DATA_RLS_SIZE				1
#define NVDLA_CDMA_D_MISC_CFG_0_SKIP_DATA_RLS_DISABLE			1'h0
#define NVDLA_CDMA_D_MISC_CFG_0_SKIP_DATA_RLS_ENABLE			1'h1
#define NVDLA_CDMA_D_MISC_CFG_0_SKIP_WEIGHT_RLS_RANGE			28:28
#define NVDLA_CDMA_D_MISC_CFG_0_SKIP_WEIGHT_RLS_SIZE				1
#define NVDLA_CDMA_D_MISC_CFG_0_SKIP_WEIGHT_RLS_DISABLE			1'h0
#define NVDLA_CDMA_D_MISC_CFG_0_SKIP_WEIGHT_RLS_ENABLE			1'h1


// Register NVDLA_CDMA_D_DATAIN_FORMAT_0
#define NVDLA_CDMA_D_DATAIN_FORMAT_0					32'h3018
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_DATAIN_FORMAT_RANGE			0:0
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_DATAIN_FORMAT_SIZE				1
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_DATAIN_FORMAT_FEATURE			1'h0
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_DATAIN_FORMAT_PIXEL			1'h1
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_RANGE			13:8
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_SIZE				6
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_R8			6'h0
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_R10			6'h1
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_R12			6'h2
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_R16			6'h3
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_R16_I			6'h4
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_R16_F			6'h5
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A16B16G16R16			6'h6
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_X16B16G16R16			6'h7
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A16B16G16R16_F			6'h8
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A16Y16U16V16			6'h9
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_V16U16Y16A16			6'ha
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A16Y16U16V16_F			6'hb
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A8B8G8R8			6'hc
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A8R8G8B8			6'hd
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_B8G8R8A8			6'he
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_R8G8B8A8			6'hf
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_X8B8G8R8			6'h10
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_X8R8G8B8			6'h11
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_B8G8R8X8			6'h12
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_R8G8B8X8			6'h13
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A2B10G10R10			6'h14
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A2R10G10B10			6'h15
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_B10G10R10A2			6'h16
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_R10G10B10A2			6'h17
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A2Y10U10V10			6'h18
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_V10U10Y10A2			6'h19
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_A8Y8U8V8			6'h1a
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_V8U8Y8A8			6'h1b
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_Y8___U8V8_N444			6'h1c
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_Y8___V8U8_N444			6'h1d
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_Y10___U10V10_N444			6'h1e
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_Y10___V10U10_N444			6'h1f
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_Y12___U12V12_N444			6'h20
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_Y12___V12U12_N444			6'h21
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_Y16___U16V16_N444			6'h22
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_FORMAT_T_Y16___V16U16_N444			6'h23
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_MAPPING_RANGE			16:16
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_MAPPING_SIZE				1
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_MAPPING_PITCH_LINEAR			1'h0
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_MAPPING_RESERVED_LINEAR			1'h1
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_SIGN_OVERRIDE_RANGE			20:20
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_SIGN_OVERRIDE_SIZE				1
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_SIGN_OVERRIDE_UNSIGNED_INT			1'h0
#define NVDLA_CDMA_D_DATAIN_FORMAT_0_PIXEL_SIGN_OVERRIDE_SIGNED_INT			1'h1


// Register NVDLA_CDMA_D_DATAIN_SIZE_0_0
#define NVDLA_CDMA_D_DATAIN_SIZE_0_0					32'h301c
#define NVDLA_CDMA_D_DATAIN_SIZE_0_0_DATAIN_WIDTH_RANGE			12:0
#define NVDLA_CDMA_D_DATAIN_SIZE_0_0_DATAIN_WIDTH_SIZE				13
#define NVDLA_CDMA_D_DATAIN_SIZE_0_0_DATAIN_HEIGHT_RANGE			28:16
#define NVDLA_CDMA_D_DATAIN_SIZE_0_0_DATAIN_HEIGHT_SIZE				13


// Register NVDLA_CDMA_D_DATAIN_SIZE_1_0
#define NVDLA_CDMA_D_DATAIN_SIZE_1_0					32'h3020
#define NVDLA_CDMA_D_DATAIN_SIZE_1_0_DATAIN_CHANNEL_RANGE			12:0
#define NVDLA_CDMA_D_DATAIN_SIZE_1_0_DATAIN_CHANNEL_SIZE				13


// Register NVDLA_CDMA_D_DATAIN_SIZE_EXT_0_0
#define NVDLA_CDMA_D_DATAIN_SIZE_EXT_0_0					32'h3024
#define NVDLA_CDMA_D_DATAIN_SIZE_EXT_0_0_DATAIN_WIDTH_EXT_RANGE			12:0
#define NVDLA_CDMA_D_DATAIN_SIZE_EXT_0_0_DATAIN_WIDTH_EXT_SIZE				13
#define NVDLA_CDMA_D_DATAIN_SIZE_EXT_0_0_DATAIN_HEIGHT_EXT_RANGE			28:16
#define NVDLA_CDMA_D_DATAIN_SIZE_EXT_0_0_DATAIN_HEIGHT_EXT_SIZE				13


// Register NVDLA_CDMA_D_PIXEL_OFFSET_0
#define NVDLA_CDMA_D_PIXEL_OFFSET_0					32'h3028
#define NVDLA_CDMA_D_PIXEL_OFFSET_0_PIXEL_X_OFFSET_RANGE			4:0
#define NVDLA_CDMA_D_PIXEL_OFFSET_0_PIXEL_X_OFFSET_SIZE				5
#define NVDLA_CDMA_D_PIXEL_OFFSET_0_PIXEL_Y_OFFSET_RANGE			18:16
#define NVDLA_CDMA_D_PIXEL_OFFSET_0_PIXEL_Y_OFFSET_SIZE				3


// Register NVDLA_CDMA_D_DAIN_RAM_TYPE_0
#define NVDLA_CDMA_D_DAIN_RAM_TYPE_0					32'h302c
#define NVDLA_CDMA_D_DAIN_RAM_TYPE_0_DATAIN_RAM_TYPE_RANGE			0:0
#define NVDLA_CDMA_D_DAIN_RAM_TYPE_0_DATAIN_RAM_TYPE_SIZE				1
#define NVDLA_CDMA_D_DAIN_RAM_TYPE_0_DATAIN_RAM_TYPE_CVIF			1'h0
#define NVDLA_CDMA_D_DAIN_RAM_TYPE_0_DATAIN_RAM_TYPE_MCIF			1'h1


// Register NVDLA_CDMA_D_DAIN_ADDR_HIGH_0_0
#define NVDLA_CDMA_D_DAIN_ADDR_HIGH_0_0					32'h3030
#define NVDLA_CDMA_D_DAIN_ADDR_HIGH_0_0_DATAIN_ADDR_HIGH_0_RANGE			31:0
#define NVDLA_CDMA_D_DAIN_ADDR_HIGH_0_0_DATAIN_ADDR_HIGH_0_SIZE				32


// Register NVDLA_CDMA_D_DAIN_ADDR_LOW_0_0
#define NVDLA_CDMA_D_DAIN_ADDR_LOW_0_0					32'h3034
#define NVDLA_CDMA_D_DAIN_ADDR_LOW_0_0_DATAIN_ADDR_LOW_0_RANGE			31:0
#define NVDLA_CDMA_D_DAIN_ADDR_LOW_0_0_DATAIN_ADDR_LOW_0_SIZE				32


// Register NVDLA_CDMA_D_DAIN_ADDR_HIGH_1_0
#define NVDLA_CDMA_D_DAIN_ADDR_HIGH_1_0					32'h3038
#define NVDLA_CDMA_D_DAIN_ADDR_HIGH_1_0_DATAIN_ADDR_HIGH_1_RANGE			31:0
#define NVDLA_CDMA_D_DAIN_ADDR_HIGH_1_0_DATAIN_ADDR_HIGH_1_SIZE				32


// Register NVDLA_CDMA_D_DAIN_ADDR_LOW_1_0
#define NVDLA_CDMA_D_DAIN_ADDR_LOW_1_0					32'h303c
#define NVDLA_CDMA_D_DAIN_ADDR_LOW_1_0_DATAIN_ADDR_LOW_1_RANGE			31:0
#define NVDLA_CDMA_D_DAIN_ADDR_LOW_1_0_DATAIN_ADDR_LOW_1_SIZE				32


// Register NVDLA_CDMA_D_LINE_STRIDE_0
#define NVDLA_CDMA_D_LINE_STRIDE_0					32'h3040
#define NVDLA_CDMA_D_LINE_STRIDE_0_LINE_STRIDE_RANGE			31:0
#define NVDLA_CDMA_D_LINE_STRIDE_0_LINE_STRIDE_SIZE				32


// Register NVDLA_CDMA_D_LINE_UV_STRIDE_0
#define NVDLA_CDMA_D_LINE_UV_STRIDE_0					32'h3044
#define NVDLA_CDMA_D_LINE_UV_STRIDE_0_UV_LINE_STRIDE_RANGE			31:0
#define NVDLA_CDMA_D_LINE_UV_STRIDE_0_UV_LINE_STRIDE_SIZE				32


// Register NVDLA_CDMA_D_SURF_STRIDE_0
#define NVDLA_CDMA_D_SURF_STRIDE_0					32'h3048
#define NVDLA_CDMA_D_SURF_STRIDE_0_SURF_STRIDE_RANGE			31:0
#define NVDLA_CDMA_D_SURF_STRIDE_0_SURF_STRIDE_SIZE				32


// Register NVDLA_CDMA_D_DAIN_MAP_0
#define NVDLA_CDMA_D_DAIN_MAP_0					32'h304c
#define NVDLA_CDMA_D_DAIN_MAP_0_LINE_PACKED_RANGE			0:0
#define NVDLA_CDMA_D_DAIN_MAP_0_LINE_PACKED_SIZE				1
#define NVDLA_CDMA_D_DAIN_MAP_0_LINE_PACKED_FALSE			1'h0
#define NVDLA_CDMA_D_DAIN_MAP_0_LINE_PACKED_TRUE			1'h1
#define NVDLA_CDMA_D_DAIN_MAP_0_SURF_PACKED_RANGE			16:16
#define NVDLA_CDMA_D_DAIN_MAP_0_SURF_PACKED_SIZE				1
#define NVDLA_CDMA_D_DAIN_MAP_0_SURF_PACKED_FALSE			1'h0
#define NVDLA_CDMA_D_DAIN_MAP_0_SURF_PACKED_TRUE			1'h1


// Register NVDLA_CDMA_D_RESERVED_X_CFG_0
#define NVDLA_CDMA_D_RESERVED_X_CFG_0					32'h3050
#define NVDLA_CDMA_D_RESERVED_X_CFG_0_RSV_PER_LINE_RANGE			9:0
#define NVDLA_CDMA_D_RESERVED_X_CFG_0_RSV_PER_LINE_SIZE				10
#define NVDLA_CDMA_D_RESERVED_X_CFG_0_RSV_PER_UV_LINE_RANGE			25:16
#define NVDLA_CDMA_D_RESERVED_X_CFG_0_RSV_PER_UV_LINE_SIZE				10


// Register NVDLA_CDMA_D_RESERVED_Y_CFG_0
#define NVDLA_CDMA_D_RESERVED_Y_CFG_0					32'h3054
#define NVDLA_CDMA_D_RESERVED_Y_CFG_0_RSV_HEIGHT_RANGE			2:0
#define NVDLA_CDMA_D_RESERVED_Y_CFG_0_RSV_HEIGHT_SIZE				3
#define NVDLA_CDMA_D_RESERVED_Y_CFG_0_RSV_Y_INDEX_RANGE			20:16
#define NVDLA_CDMA_D_RESERVED_Y_CFG_0_RSV_Y_INDEX_SIZE				5


// Register NVDLA_CDMA_D_BATCH_NUMBER_0
#define NVDLA_CDMA_D_BATCH_NUMBER_0					32'h3058
#define NVDLA_CDMA_D_BATCH_NUMBER_0_BATCHES_RANGE			4:0
#define NVDLA_CDMA_D_BATCH_NUMBER_0_BATCHES_SIZE				5


// Register NVDLA_CDMA_D_BATCH_STRIDE_0
#define NVDLA_CDMA_D_BATCH_STRIDE_0					32'h305c
#define NVDLA_CDMA_D_BATCH_STRIDE_0_BATCH_STRIDE_RANGE			31:0
#define NVDLA_CDMA_D_BATCH_STRIDE_0_BATCH_STRIDE_SIZE				32


// Register NVDLA_CDMA_D_ENTRY_PER_SLICE_0
#define NVDLA_CDMA_D_ENTRY_PER_SLICE_0					32'h3060
#define NVDLA_CDMA_D_ENTRY_PER_SLICE_0_ENTRIES_RANGE			13:0
#define NVDLA_CDMA_D_ENTRY_PER_SLICE_0_ENTRIES_SIZE				14


// Register NVDLA_CDMA_D_FETCH_GRAIN_0
#define NVDLA_CDMA_D_FETCH_GRAIN_0					32'h3064
#define NVDLA_CDMA_D_FETCH_GRAIN_0_GRAINS_RANGE			11:0
#define NVDLA_CDMA_D_FETCH_GRAIN_0_GRAINS_SIZE				12


// Register NVDLA_CDMA_D_WEIGHT_FORMAT_0
#define NVDLA_CDMA_D_WEIGHT_FORMAT_0					32'h3068
#define NVDLA_CDMA_D_WEIGHT_FORMAT_0_WEIGHT_FORMAT_RANGE			0:0
#define NVDLA_CDMA_D_WEIGHT_FORMAT_0_WEIGHT_FORMAT_SIZE				1
#define NVDLA_CDMA_D_WEIGHT_FORMAT_0_WEIGHT_FORMAT_UNCOMPRESSED			1'h0
#define NVDLA_CDMA_D_WEIGHT_FORMAT_0_WEIGHT_FORMAT_COMPRESSED			1'h1


// Register NVDLA_CDMA_D_WEIGHT_SIZE_0_0
#define NVDLA_CDMA_D_WEIGHT_SIZE_0_0					32'h306c
#define NVDLA_CDMA_D_WEIGHT_SIZE_0_0_BYTE_PER_KERNEL_RANGE			17:0
#define NVDLA_CDMA_D_WEIGHT_SIZE_0_0_BYTE_PER_KERNEL_SIZE				18


// Register NVDLA_CDMA_D_WEIGHT_SIZE_1_0
#define NVDLA_CDMA_D_WEIGHT_SIZE_1_0					32'h3070
#define NVDLA_CDMA_D_WEIGHT_SIZE_1_0_WEIGHT_KERNEL_RANGE			12:0
#define NVDLA_CDMA_D_WEIGHT_SIZE_1_0_WEIGHT_KERNEL_SIZE				13


// Register NVDLA_CDMA_D_WEIGHT_RAM_TYPE_0
#define NVDLA_CDMA_D_WEIGHT_RAM_TYPE_0					32'h3074
#define NVDLA_CDMA_D_WEIGHT_RAM_TYPE_0_WEIGHT_RAM_TYPE_RANGE			0:0
#define NVDLA_CDMA_D_WEIGHT_RAM_TYPE_0_WEIGHT_RAM_TYPE_SIZE				1
#define NVDLA_CDMA_D_WEIGHT_RAM_TYPE_0_WEIGHT_RAM_TYPE_CVIF			1'h0
#define NVDLA_CDMA_D_WEIGHT_RAM_TYPE_0_WEIGHT_RAM_TYPE_MCIF			1'h1


// Register NVDLA_CDMA_D_WEIGHT_ADDR_HIGH_0
#define NVDLA_CDMA_D_WEIGHT_ADDR_HIGH_0					32'h3078
#define NVDLA_CDMA_D_WEIGHT_ADDR_HIGH_0_WEIGHT_ADDR_HIGH_RANGE			31:0
#define NVDLA_CDMA_D_WEIGHT_ADDR_HIGH_0_WEIGHT_ADDR_HIGH_SIZE				32


// Register NVDLA_CDMA_D_WEIGHT_ADDR_LOW_0
#define NVDLA_CDMA_D_WEIGHT_ADDR_LOW_0					32'h307c
#define NVDLA_CDMA_D_WEIGHT_ADDR_LOW_0_WEIGHT_ADDR_LOW_RANGE			31:0
#define NVDLA_CDMA_D_WEIGHT_ADDR_LOW_0_WEIGHT_ADDR_LOW_SIZE				32


// Register NVDLA_CDMA_D_WEIGHT_BYTES_0
#define NVDLA_CDMA_D_WEIGHT_BYTES_0					32'h3080
#define NVDLA_CDMA_D_WEIGHT_BYTES_0_WEIGHT_BYTES_RANGE			31:0
#define NVDLA_CDMA_D_WEIGHT_BYTES_0_WEIGHT_BYTES_SIZE				32


// Register NVDLA_CDMA_D_WGS_ADDR_HIGH_0
#define NVDLA_CDMA_D_WGS_ADDR_HIGH_0					32'h3084
#define NVDLA_CDMA_D_WGS_ADDR_HIGH_0_WGS_ADDR_HIGH_RANGE			31:0
#define NVDLA_CDMA_D_WGS_ADDR_HIGH_0_WGS_ADDR_HIGH_SIZE				32


// Register NVDLA_CDMA_D_WGS_ADDR_LOW_0
#define NVDLA_CDMA_D_WGS_ADDR_LOW_0					32'h3088
#define NVDLA_CDMA_D_WGS_ADDR_LOW_0_WGS_ADDR_LOW_RANGE			31:0
#define NVDLA_CDMA_D_WGS_ADDR_LOW_0_WGS_ADDR_LOW_SIZE				32


// Register NVDLA_CDMA_D_WMB_ADDR_HIGH_0
#define NVDLA_CDMA_D_WMB_ADDR_HIGH_0					32'h308c
#define NVDLA_CDMA_D_WMB_ADDR_HIGH_0_WMB_ADDR_HIGH_RANGE			31:0
#define NVDLA_CDMA_D_WMB_ADDR_HIGH_0_WMB_ADDR_HIGH_SIZE				32


// Register NVDLA_CDMA_D_WMB_ADDR_LOW_0
#define NVDLA_CDMA_D_WMB_ADDR_LOW_0					32'h3090
#define NVDLA_CDMA_D_WMB_ADDR_LOW_0_WMB_ADDR_LOW_RANGE			31:0
#define NVDLA_CDMA_D_WMB_ADDR_LOW_0_WMB_ADDR_LOW_SIZE				32


// Register NVDLA_CDMA_D_WMB_BYTES_0
#define NVDLA_CDMA_D_WMB_BYTES_0					32'h3094
#define NVDLA_CDMA_D_WMB_BYTES_0_WMB_BYTES_RANGE			27:0
#define NVDLA_CDMA_D_WMB_BYTES_0_WMB_BYTES_SIZE				28


// Register NVDLA_CDMA_D_MEAN_FORMAT_0
#define NVDLA_CDMA_D_MEAN_FORMAT_0					32'h3098
#define NVDLA_CDMA_D_MEAN_FORMAT_0_MEAN_FORMAT_RANGE			0:0
#define NVDLA_CDMA_D_MEAN_FORMAT_0_MEAN_FORMAT_SIZE				1
#define NVDLA_CDMA_D_MEAN_FORMAT_0_MEAN_FORMAT_DISABLE			1'h0
#define NVDLA_CDMA_D_MEAN_FORMAT_0_MEAN_FORMAT_ENABLE			1'h1


// Register NVDLA_CDMA_D_MEAN_GLOBAL_0_0
#define NVDLA_CDMA_D_MEAN_GLOBAL_0_0					32'h309c
#define NVDLA_CDMA_D_MEAN_GLOBAL_0_0_MEAN_RY_RANGE			15:0
#define NVDLA_CDMA_D_MEAN_GLOBAL_0_0_MEAN_RY_SIZE				16
#define NVDLA_CDMA_D_MEAN_GLOBAL_0_0_MEAN_GU_RANGE			31:16
#define NVDLA_CDMA_D_MEAN_GLOBAL_0_0_MEAN_GU_SIZE				16


// Register NVDLA_CDMA_D_MEAN_GLOBAL_1_0
#define NVDLA_CDMA_D_MEAN_GLOBAL_1_0					32'h30a0
#define NVDLA_CDMA_D_MEAN_GLOBAL_1_0_MEAN_BV_RANGE			15:0
#define NVDLA_CDMA_D_MEAN_GLOBAL_1_0_MEAN_BV_SIZE				16
#define NVDLA_CDMA_D_MEAN_GLOBAL_1_0_MEAN_AX_RANGE			31:16
#define NVDLA_CDMA_D_MEAN_GLOBAL_1_0_MEAN_AX_SIZE				16


// Register NVDLA_CDMA_D_CVT_CFG_0
#define NVDLA_CDMA_D_CVT_CFG_0					32'h30a4
#define NVDLA_CDMA_D_CVT_CFG_0_CVT_EN_RANGE			0:0
#define NVDLA_CDMA_D_CVT_CFG_0_CVT_EN_SIZE				1
#define NVDLA_CDMA_D_CVT_CFG_0_CVT_EN_DISABLE			1'h0
#define NVDLA_CDMA_D_CVT_CFG_0_CVT_EN_ENABLE			1'h1
#define NVDLA_CDMA_D_CVT_CFG_0_CVT_TRUNCATE_RANGE			9:4
#define NVDLA_CDMA_D_CVT_CFG_0_CVT_TRUNCATE_SIZE				6


// Register NVDLA_CDMA_D_CVT_OFFSET_0
#define NVDLA_CDMA_D_CVT_OFFSET_0					32'h30a8
#define NVDLA_CDMA_D_CVT_OFFSET_0_CVT_OFFSET_RANGE			15:0
#define NVDLA_CDMA_D_CVT_OFFSET_0_CVT_OFFSET_SIZE				16


// Register NVDLA_CDMA_D_CVT_SCALE_0
#define NVDLA_CDMA_D_CVT_SCALE_0					32'h30ac
#define NVDLA_CDMA_D_CVT_SCALE_0_CVT_SCALE_RANGE			15:0
#define NVDLA_CDMA_D_CVT_SCALE_0_CVT_SCALE_SIZE				16


// Register NVDLA_CDMA_D_CONV_STRIDE_0
#define NVDLA_CDMA_D_CONV_STRIDE_0					32'h30b0
#define NVDLA_CDMA_D_CONV_STRIDE_0_CONV_X_STRIDE_RANGE			2:0
#define NVDLA_CDMA_D_CONV_STRIDE_0_CONV_X_STRIDE_SIZE				3
#define NVDLA_CDMA_D_CONV_STRIDE_0_CONV_Y_STRIDE_RANGE			18:16
#define NVDLA_CDMA_D_CONV_STRIDE_0_CONV_Y_STRIDE_SIZE				3


// Register NVDLA_CDMA_D_ZERO_PADDING_0
#define NVDLA_CDMA_D_ZERO_PADDING_0					32'h30b4
#define NVDLA_CDMA_D_ZERO_PADDING_0_PAD_LEFT_RANGE			4:0
#define NVDLA_CDMA_D_ZERO_PADDING_0_PAD_LEFT_SIZE				5
#define NVDLA_CDMA_D_ZERO_PADDING_0_PAD_RIGHT_RANGE			13:8
#define NVDLA_CDMA_D_ZERO_PADDING_0_PAD_RIGHT_SIZE				6
#define NVDLA_CDMA_D_ZERO_PADDING_0_PAD_TOP_RANGE			20:16
#define NVDLA_CDMA_D_ZERO_PADDING_0_PAD_TOP_SIZE				5
#define NVDLA_CDMA_D_ZERO_PADDING_0_PAD_BOTTOM_RANGE			29:24
#define NVDLA_CDMA_D_ZERO_PADDING_0_PAD_BOTTOM_SIZE				6


// Register NVDLA_CDMA_D_ZERO_PADDING_VALUE_0
#define NVDLA_CDMA_D_ZERO_PADDING_VALUE_0					32'h30b8
#define NVDLA_CDMA_D_ZERO_PADDING_VALUE_0_PAD_VALUE_RANGE			15:0
#define NVDLA_CDMA_D_ZERO_PADDING_VALUE_0_PAD_VALUE_SIZE				16


// Register NVDLA_CDMA_D_BANK_0
#define NVDLA_CDMA_D_BANK_0					32'h30bc
#define NVDLA_CDMA_D_BANK_0_DATA_BANK_RANGE			4:0
#define NVDLA_CDMA_D_BANK_0_DATA_BANK_SIZE				5
#define NVDLA_CDMA_D_BANK_0_WEIGHT_BANK_RANGE			20:16
#define NVDLA_CDMA_D_BANK_0_WEIGHT_BANK_SIZE				5


// Register NVDLA_CDMA_D_NAN_FLUSH_TO_ZERO_0
#define NVDLA_CDMA_D_NAN_FLUSH_TO_ZERO_0					32'h30c0
#define NVDLA_CDMA_D_NAN_FLUSH_TO_ZERO_0_NAN_TO_ZERO_RANGE			0:0
#define NVDLA_CDMA_D_NAN_FLUSH_TO_ZERO_0_NAN_TO_ZERO_SIZE				1
#define NVDLA_CDMA_D_NAN_FLUSH_TO_ZERO_0_NAN_TO_ZERO_DISABLE			1'h0
#define NVDLA_CDMA_D_NAN_FLUSH_TO_ZERO_0_NAN_TO_ZERO_ENABLE			1'h1


// Register NVDLA_CDMA_D_NAN_INPUT_DATA_NUM_0
#define NVDLA_CDMA_D_NAN_INPUT_DATA_NUM_0					32'h30c4
#define NVDLA_CDMA_D_NAN_INPUT_DATA_NUM_0_NAN_DATA_NUM_RANGE			31:0
#define NVDLA_CDMA_D_NAN_INPUT_DATA_NUM_0_NAN_DATA_NUM_SIZE				32


// Register NVDLA_CDMA_D_NAN_INPUT_WEIGHT_NUM_0
#define NVDLA_CDMA_D_NAN_INPUT_WEIGHT_NUM_0					32'h30c8
#define NVDLA_CDMA_D_NAN_INPUT_WEIGHT_NUM_0_NAN_WEIGHT_NUM_RANGE			31:0
#define NVDLA_CDMA_D_NAN_INPUT_WEIGHT_NUM_0_NAN_WEIGHT_NUM_SIZE				32


// Register NVDLA_CDMA_D_INF_INPUT_DATA_NUM_0
#define NVDLA_CDMA_D_INF_INPUT_DATA_NUM_0					32'h30cc
#define NVDLA_CDMA_D_INF_INPUT_DATA_NUM_0_INF_DATA_NUM_RANGE			31:0
#define NVDLA_CDMA_D_INF_INPUT_DATA_NUM_0_INF_DATA_NUM_SIZE				32


// Register NVDLA_CDMA_D_INF_INPUT_WEIGHT_NUM_0
#define NVDLA_CDMA_D_INF_INPUT_WEIGHT_NUM_0					32'h30d0
#define NVDLA_CDMA_D_INF_INPUT_WEIGHT_NUM_0_INF_WEIGHT_NUM_RANGE			31:0
#define NVDLA_CDMA_D_INF_INPUT_WEIGHT_NUM_0_INF_WEIGHT_NUM_SIZE				32


// Register NVDLA_CDMA_D_PERF_ENABLE_0
#define NVDLA_CDMA_D_PERF_ENABLE_0					32'h30d4
#define NVDLA_CDMA_D_PERF_ENABLE_0_DMA_EN_RANGE			0:0
#define NVDLA_CDMA_D_PERF_ENABLE_0_DMA_EN_SIZE				1


// Register NVDLA_CDMA_D_PERF_DAT_READ_STALL_0
#define NVDLA_CDMA_D_PERF_DAT_READ_STALL_0					32'h30d8
#define NVDLA_CDMA_D_PERF_DAT_READ_STALL_0_DAT_RD_STALL_RANGE			31:0
#define NVDLA_CDMA_D_PERF_DAT_READ_STALL_0_DAT_RD_STALL_SIZE				32


// Register NVDLA_CDMA_D_PERF_WT_READ_STALL_0
#define NVDLA_CDMA_D_PERF_WT_READ_STALL_0					32'h30dc
#define NVDLA_CDMA_D_PERF_WT_READ_STALL_0_WT_RD_STALL_RANGE			31:0
#define NVDLA_CDMA_D_PERF_WT_READ_STALL_0_WT_RD_STALL_SIZE				32


// Register NVDLA_CDMA_D_PERF_DAT_READ_LATENCY_0
#define NVDLA_CDMA_D_PERF_DAT_READ_LATENCY_0					32'h30e0
#define NVDLA_CDMA_D_PERF_DAT_READ_LATENCY_0_DAT_RD_LATENCY_RANGE			31:0
#define NVDLA_CDMA_D_PERF_DAT_READ_LATENCY_0_DAT_RD_LATENCY_SIZE				32


// Register NVDLA_CDMA_D_PERF_WT_READ_LATENCY_0
#define NVDLA_CDMA_D_PERF_WT_READ_LATENCY_0					32'h30e4
#define NVDLA_CDMA_D_PERF_WT_READ_LATENCY_0_WT_RD_LATENCY_RANGE			31:0
#define NVDLA_CDMA_D_PERF_WT_READ_LATENCY_0_WT_RD_LATENCY_SIZE				32


// Register NVDLA_CDMA_D_CYA_0
#define NVDLA_CDMA_D_CYA_0					32'h30e8
#define NVDLA_CDMA_D_CYA_0_CYA_RANGE			31:0
#define NVDLA_CDMA_D_CYA_0_CYA_SIZE				32



//
// ADDRESS SPACES
//

#define BASE_ADDRESS_NVDLA_CDMA	32'h3000