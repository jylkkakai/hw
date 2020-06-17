// Register NVDLA_CDP_S_STATUS_0
#define NVDLA_CDP_S_STATUS_0					32'hd000
#define NVDLA_CDP_S_STATUS_0_STATUS_0_RANGE			1:0
#define NVDLA_CDP_S_STATUS_0_STATUS_0_SIZE				2
#define NVDLA_CDP_S_STATUS_0_STATUS_0_IDLE			2'h0
#define NVDLA_CDP_S_STATUS_0_STATUS_0_RUNNING			2'h1
#define NVDLA_CDP_S_STATUS_0_STATUS_0_PENDING			2'h2
#define NVDLA_CDP_S_STATUS_0_STATUS_1_RANGE			17:16
#define NVDLA_CDP_S_STATUS_0_STATUS_1_SIZE				2
#define NVDLA_CDP_S_STATUS_0_STATUS_1_IDLE			2'h0
#define NVDLA_CDP_S_STATUS_0_STATUS_1_RUNNING			2'h1
#define NVDLA_CDP_S_STATUS_0_STATUS_1_PENDING			2'h2


// Register NVDLA_CDP_S_POINTER_0
#define NVDLA_CDP_S_POINTER_0					32'hd004
#define NVDLA_CDP_S_POINTER_0_PRODUCER_RANGE			0:0
#define NVDLA_CDP_S_POINTER_0_PRODUCER_SIZE				1
#define NVDLA_CDP_S_POINTER_0_PRODUCER_GROUP_0			1'h0
#define NVDLA_CDP_S_POINTER_0_PRODUCER_GROUP_1			1'h1
#define NVDLA_CDP_S_POINTER_0_CONSUMER_RANGE			16:16
#define NVDLA_CDP_S_POINTER_0_CONSUMER_SIZE				1
#define NVDLA_CDP_S_POINTER_0_CONSUMER_GROUP_0			1'h0
#define NVDLA_CDP_S_POINTER_0_CONSUMER_GROUP_1			1'h1


// Register NVDLA_CDP_S_LUT_ACCESS_CFG_0
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0					32'hd008
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_ADDR_RANGE			9:0
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_ADDR_SIZE				10
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_TABLE_ID_RANGE			16:16
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_TABLE_ID_SIZE				1
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_TABLE_ID_LE			1'h0
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_TABLE_ID_LO			1'h1
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_ACCESS_TYPE_RANGE			17:17
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_ACCESS_TYPE_SIZE				1
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_ACCESS_TYPE_READ			1'h0
#define NVDLA_CDP_S_LUT_ACCESS_CFG_0_LUT_ACCESS_TYPE_WRITE			1'h1


// Register NVDLA_CDP_S_LUT_ACCESS_DATA_0
#define NVDLA_CDP_S_LUT_ACCESS_DATA_0					32'hd00c
#define NVDLA_CDP_S_LUT_ACCESS_DATA_0_LUT_DATA_RANGE			15:0
#define NVDLA_CDP_S_LUT_ACCESS_DATA_0_LUT_DATA_SIZE				16


// Register NVDLA_CDP_S_LUT_CFG_0
#define NVDLA_CDP_S_LUT_CFG_0					32'hd010
#define NVDLA_CDP_S_LUT_CFG_0_LUT_LE_FUNCTION_RANGE			0:0
#define NVDLA_CDP_S_LUT_CFG_0_LUT_LE_FUNCTION_SIZE				1
#define NVDLA_CDP_S_LUT_CFG_0_LUT_LE_FUNCTION_EXPONENT			1'h0
#define NVDLA_CDP_S_LUT_CFG_0_LUT_LE_FUNCTION_LINEAR			1'h1
#define NVDLA_CDP_S_LUT_CFG_0_LUT_UFLOW_PRIORITY_RANGE			4:4
#define NVDLA_CDP_S_LUT_CFG_0_LUT_UFLOW_PRIORITY_SIZE				1
#define NVDLA_CDP_S_LUT_CFG_0_LUT_UFLOW_PRIORITY_LE			1'h0
#define NVDLA_CDP_S_LUT_CFG_0_LUT_UFLOW_PRIORITY_LO			1'h1
#define NVDLA_CDP_S_LUT_CFG_0_LUT_OFLOW_PRIORITY_RANGE			5:5
#define NVDLA_CDP_S_LUT_CFG_0_LUT_OFLOW_PRIORITY_SIZE				1
#define NVDLA_CDP_S_LUT_CFG_0_LUT_OFLOW_PRIORITY_LE			1'h0
#define NVDLA_CDP_S_LUT_CFG_0_LUT_OFLOW_PRIORITY_LO			1'h1
#define NVDLA_CDP_S_LUT_CFG_0_LUT_HYBRID_PRIORITY_RANGE			6:6
#define NVDLA_CDP_S_LUT_CFG_0_LUT_HYBRID_PRIORITY_SIZE				1
#define NVDLA_CDP_S_LUT_CFG_0_LUT_HYBRID_PRIORITY_LE			1'h0
#define NVDLA_CDP_S_LUT_CFG_0_LUT_HYBRID_PRIORITY_LO			1'h1


// Register NVDLA_CDP_S_LUT_INFO_0
#define NVDLA_CDP_S_LUT_INFO_0					32'hd014
#define NVDLA_CDP_S_LUT_INFO_0_LUT_LE_INDEX_OFFSET_RANGE			7:0
#define NVDLA_CDP_S_LUT_INFO_0_LUT_LE_INDEX_OFFSET_SIZE				8
#define NVDLA_CDP_S_LUT_INFO_0_LUT_LE_INDEX_SELECT_RANGE			15:8
#define NVDLA_CDP_S_LUT_INFO_0_LUT_LE_INDEX_SELECT_SIZE				8
#define NVDLA_CDP_S_LUT_INFO_0_LUT_LO_INDEX_SELECT_RANGE			23:16
#define NVDLA_CDP_S_LUT_INFO_0_LUT_LO_INDEX_SELECT_SIZE				8


// Register NVDLA_CDP_S_LUT_LE_START_LOW_0
#define NVDLA_CDP_S_LUT_LE_START_LOW_0					32'hd018
#define NVDLA_CDP_S_LUT_LE_START_LOW_0_LUT_LE_START_LOW_RANGE			31:0
#define NVDLA_CDP_S_LUT_LE_START_LOW_0_LUT_LE_START_LOW_SIZE				32


// Register NVDLA_CDP_S_LUT_LE_START_HIGH_0
#define NVDLA_CDP_S_LUT_LE_START_HIGH_0					32'hd01c
#define NVDLA_CDP_S_LUT_LE_START_HIGH_0_LUT_LE_START_HIGH_RANGE			5:0
#define NVDLA_CDP_S_LUT_LE_START_HIGH_0_LUT_LE_START_HIGH_SIZE				6


// Register NVDLA_CDP_S_LUT_LE_END_LOW_0
#define NVDLA_CDP_S_LUT_LE_END_LOW_0					32'hd020
#define NVDLA_CDP_S_LUT_LE_END_LOW_0_LUT_LE_END_LOW_RANGE			31:0
#define NVDLA_CDP_S_LUT_LE_END_LOW_0_LUT_LE_END_LOW_SIZE				32


// Register NVDLA_CDP_S_LUT_LE_END_HIGH_0
#define NVDLA_CDP_S_LUT_LE_END_HIGH_0					32'hd024
#define NVDLA_CDP_S_LUT_LE_END_HIGH_0_LUT_LE_END_HIGH_RANGE			5:0
#define NVDLA_CDP_S_LUT_LE_END_HIGH_0_LUT_LE_END_HIGH_SIZE				6


// Register NVDLA_CDP_S_LUT_LO_START_LOW_0
#define NVDLA_CDP_S_LUT_LO_START_LOW_0					32'hd028
#define NVDLA_CDP_S_LUT_LO_START_LOW_0_LUT_LO_START_LOW_RANGE			31:0
#define NVDLA_CDP_S_LUT_LO_START_LOW_0_LUT_LO_START_LOW_SIZE				32


// Register NVDLA_CDP_S_LUT_LO_START_HIGH_0
#define NVDLA_CDP_S_LUT_LO_START_HIGH_0					32'hd02c
#define NVDLA_CDP_S_LUT_LO_START_HIGH_0_LUT_LO_START_HIGH_RANGE			5:0
#define NVDLA_CDP_S_LUT_LO_START_HIGH_0_LUT_LO_START_HIGH_SIZE				6


// Register NVDLA_CDP_S_LUT_LO_END_LOW_0
#define NVDLA_CDP_S_LUT_LO_END_LOW_0					32'hd030
#define NVDLA_CDP_S_LUT_LO_END_LOW_0_LUT_LO_END_LOW_RANGE			31:0
#define NVDLA_CDP_S_LUT_LO_END_LOW_0_LUT_LO_END_LOW_SIZE				32


// Register NVDLA_CDP_S_LUT_LO_END_HIGH_0
#define NVDLA_CDP_S_LUT_LO_END_HIGH_0					32'hd034
#define NVDLA_CDP_S_LUT_LO_END_HIGH_0_LUT_LO_END_HIGH_RANGE			5:0
#define NVDLA_CDP_S_LUT_LO_END_HIGH_0_LUT_LO_END_HIGH_SIZE				6


// Register NVDLA_CDP_S_LUT_LE_SLOPE_SCALE_0
#define NVDLA_CDP_S_LUT_LE_SLOPE_SCALE_0					32'hd038
#define NVDLA_CDP_S_LUT_LE_SLOPE_SCALE_0_LUT_LE_SLOPE_UFLOW_SCALE_RANGE			15:0
#define NVDLA_CDP_S_LUT_LE_SLOPE_SCALE_0_LUT_LE_SLOPE_UFLOW_SCALE_SIZE				16
#define NVDLA_CDP_S_LUT_LE_SLOPE_SCALE_0_LUT_LE_SLOPE_OFLOW_SCALE_RANGE			31:16
#define NVDLA_CDP_S_LUT_LE_SLOPE_SCALE_0_LUT_LE_SLOPE_OFLOW_SCALE_SIZE				16


// Register NVDLA_CDP_S_LUT_LE_SLOPE_SHIFT_0
#define NVDLA_CDP_S_LUT_LE_SLOPE_SHIFT_0					32'hd03c
#define NVDLA_CDP_S_LUT_LE_SLOPE_SHIFT_0_LUT_LE_SLOPE_UFLOW_SHIFT_RANGE			4:0
#define NVDLA_CDP_S_LUT_LE_SLOPE_SHIFT_0_LUT_LE_SLOPE_UFLOW_SHIFT_SIZE				5
#define NVDLA_CDP_S_LUT_LE_SLOPE_SHIFT_0_LUT_LE_SLOPE_OFLOW_SHIFT_RANGE			9:5
#define NVDLA_CDP_S_LUT_LE_SLOPE_SHIFT_0_LUT_LE_SLOPE_OFLOW_SHIFT_SIZE				5


// Register NVDLA_CDP_S_LUT_LO_SLOPE_SCALE_0
#define NVDLA_CDP_S_LUT_LO_SLOPE_SCALE_0					32'hd040
#define NVDLA_CDP_S_LUT_LO_SLOPE_SCALE_0_LUT_LO_SLOPE_UFLOW_SCALE_RANGE			15:0
#define NVDLA_CDP_S_LUT_LO_SLOPE_SCALE_0_LUT_LO_SLOPE_UFLOW_SCALE_SIZE				16
#define NVDLA_CDP_S_LUT_LO_SLOPE_SCALE_0_LUT_LO_SLOPE_OFLOW_SCALE_RANGE			31:16
#define NVDLA_CDP_S_LUT_LO_SLOPE_SCALE_0_LUT_LO_SLOPE_OFLOW_SCALE_SIZE				16


// Register NVDLA_CDP_S_LUT_LO_SLOPE_SHIFT_0
#define NVDLA_CDP_S_LUT_LO_SLOPE_SHIFT_0					32'hd044
#define NVDLA_CDP_S_LUT_LO_SLOPE_SHIFT_0_LUT_LO_SLOPE_UFLOW_SHIFT_RANGE			4:0
#define NVDLA_CDP_S_LUT_LO_SLOPE_SHIFT_0_LUT_LO_SLOPE_UFLOW_SHIFT_SIZE				5
#define NVDLA_CDP_S_LUT_LO_SLOPE_SHIFT_0_LUT_LO_SLOPE_OFLOW_SHIFT_RANGE			9:5
#define NVDLA_CDP_S_LUT_LO_SLOPE_SHIFT_0_LUT_LO_SLOPE_OFLOW_SHIFT_SIZE				5


// Register NVDLA_CDP_D_OP_ENABLE_0
#define NVDLA_CDP_D_OP_ENABLE_0					32'hd048
#define NVDLA_CDP_D_OP_ENABLE_0_OP_EN_RANGE			0:0
#define NVDLA_CDP_D_OP_ENABLE_0_OP_EN_SIZE				1
#define NVDLA_CDP_D_OP_ENABLE_0_OP_EN_DISABLE			1'h0
#define NVDLA_CDP_D_OP_ENABLE_0_OP_EN_ENABLE			1'h1


// Register NVDLA_CDP_D_FUNC_BYPASS_0
#define NVDLA_CDP_D_FUNC_BYPASS_0					32'hd04c
#define NVDLA_CDP_D_FUNC_BYPASS_0_SQSUM_BYPASS_RANGE			0:0
#define NVDLA_CDP_D_FUNC_BYPASS_0_SQSUM_BYPASS_SIZE				1
#define NVDLA_CDP_D_FUNC_BYPASS_0_SQSUM_BYPASS_DISABLE			1'h0
#define NVDLA_CDP_D_FUNC_BYPASS_0_SQSUM_BYPASS_ENABLE			1'h1
#define NVDLA_CDP_D_FUNC_BYPASS_0_MUL_BYPASS_RANGE			1:1
#define NVDLA_CDP_D_FUNC_BYPASS_0_MUL_BYPASS_SIZE				1
#define NVDLA_CDP_D_FUNC_BYPASS_0_MUL_BYPASS_DISABLE			1'h0
#define NVDLA_CDP_D_FUNC_BYPASS_0_MUL_BYPASS_ENABLE			1'h1


// Register NVDLA_CDP_D_DST_BASE_ADDR_LOW_0
#define NVDLA_CDP_D_DST_BASE_ADDR_LOW_0					32'hd050
#define NVDLA_CDP_D_DST_BASE_ADDR_LOW_0_DST_BASE_ADDR_LOW_RANGE			31:0
#define NVDLA_CDP_D_DST_BASE_ADDR_LOW_0_DST_BASE_ADDR_LOW_SIZE				32


// Register NVDLA_CDP_D_DST_BASE_ADDR_HIGH_0
#define NVDLA_CDP_D_DST_BASE_ADDR_HIGH_0					32'hd054
#define NVDLA_CDP_D_DST_BASE_ADDR_HIGH_0_DST_BASE_ADDR_HIGH_RANGE			31:0
#define NVDLA_CDP_D_DST_BASE_ADDR_HIGH_0_DST_BASE_ADDR_HIGH_SIZE				32


// Register NVDLA_CDP_D_DST_LINE_STRIDE_0
#define NVDLA_CDP_D_DST_LINE_STRIDE_0					32'hd058
#define NVDLA_CDP_D_DST_LINE_STRIDE_0_DST_LINE_STRIDE_RANGE			31:0
#define NVDLA_CDP_D_DST_LINE_STRIDE_0_DST_LINE_STRIDE_SIZE				32


// Register NVDLA_CDP_D_DST_SURFACE_STRIDE_0
#define NVDLA_CDP_D_DST_SURFACE_STRIDE_0					32'hd05c
#define NVDLA_CDP_D_DST_SURFACE_STRIDE_0_DST_SURFACE_STRIDE_RANGE			31:0
#define NVDLA_CDP_D_DST_SURFACE_STRIDE_0_DST_SURFACE_STRIDE_SIZE				32


// Register NVDLA_CDP_D_DST_DMA_CFG_0
#define NVDLA_CDP_D_DST_DMA_CFG_0					32'hd060
#define NVDLA_CDP_D_DST_DMA_CFG_0_DST_RAM_TYPE_RANGE			0:0
#define NVDLA_CDP_D_DST_DMA_CFG_0_DST_RAM_TYPE_SIZE				1
#define NVDLA_CDP_D_DST_DMA_CFG_0_DST_RAM_TYPE_CV			1'h0
#define NVDLA_CDP_D_DST_DMA_CFG_0_DST_RAM_TYPE_MC			1'h1


// Register NVDLA_CDP_D_DST_COMPRESSION_EN_0
#define NVDLA_CDP_D_DST_COMPRESSION_EN_0					32'hd064
#define NVDLA_CDP_D_DST_COMPRESSION_EN_0_DST_COMPRESSION_EN_RANGE			0:0
#define NVDLA_CDP_D_DST_COMPRESSION_EN_0_DST_COMPRESSION_EN_SIZE				1
#define NVDLA_CDP_D_DST_COMPRESSION_EN_0_DST_COMPRESSION_EN_DISABLE			1'h0
#define NVDLA_CDP_D_DST_COMPRESSION_EN_0_DST_COMPRESSION_EN_ENABLE			1'h1


// Register NVDLA_CDP_D_DATA_FORMAT_0
#define NVDLA_CDP_D_DATA_FORMAT_0					32'hd068
#define NVDLA_CDP_D_DATA_FORMAT_0_INPUT_DATA_TYPE_RANGE			1:0
#define NVDLA_CDP_D_DATA_FORMAT_0_INPUT_DATA_TYPE_SIZE				2
#define NVDLA_CDP_D_DATA_FORMAT_0_INPUT_DATA_TYPE_INT8			2'h0
#define NVDLA_CDP_D_DATA_FORMAT_0_INPUT_DATA_TYPE_INT16			2'h1
#define NVDLA_CDP_D_DATA_FORMAT_0_INPUT_DATA_TYPE_FP16			2'h2


// Register NVDLA_CDP_D_NAN_FLUSH_TO_ZERO_0
#define NVDLA_CDP_D_NAN_FLUSH_TO_ZERO_0					32'hd06c
#define NVDLA_CDP_D_NAN_FLUSH_TO_ZERO_0_NAN_TO_ZERO_RANGE			0:0
#define NVDLA_CDP_D_NAN_FLUSH_TO_ZERO_0_NAN_TO_ZERO_SIZE				1
#define NVDLA_CDP_D_NAN_FLUSH_TO_ZERO_0_NAN_TO_ZERO_DISABLE			1'h0
#define NVDLA_CDP_D_NAN_FLUSH_TO_ZERO_0_NAN_TO_ZERO_ENABLE			1'h1


// Register NVDLA_CDP_D_LRN_CFG_0
#define NVDLA_CDP_D_LRN_CFG_0					32'hd070
#define NVDLA_CDP_D_LRN_CFG_0_NORMALZ_LEN_RANGE			1:0
#define NVDLA_CDP_D_LRN_CFG_0_NORMALZ_LEN_SIZE				2
#define NVDLA_CDP_D_LRN_CFG_0_NORMALZ_LEN_LEN3			2'h0
#define NVDLA_CDP_D_LRN_CFG_0_NORMALZ_LEN_LEN5			2'h1
#define NVDLA_CDP_D_LRN_CFG_0_NORMALZ_LEN_LEN7			2'h2
#define NVDLA_CDP_D_LRN_CFG_0_NORMALZ_LEN_LEN9			2'h3


// Register NVDLA_CDP_D_DATIN_OFFSET_0
#define NVDLA_CDP_D_DATIN_OFFSET_0					32'hd074
#define NVDLA_CDP_D_DATIN_OFFSET_0_DATIN_OFFSET_RANGE			15:0
#define NVDLA_CDP_D_DATIN_OFFSET_0_DATIN_OFFSET_SIZE				16


// Register NVDLA_CDP_D_DATIN_SCALE_0
#define NVDLA_CDP_D_DATIN_SCALE_0					32'hd078
#define NVDLA_CDP_D_DATIN_SCALE_0_DATIN_SCALE_RANGE			15:0
#define NVDLA_CDP_D_DATIN_SCALE_0_DATIN_SCALE_SIZE				16


// Register NVDLA_CDP_D_DATIN_SHIFTER_0
#define NVDLA_CDP_D_DATIN_SHIFTER_0					32'hd07c
#define NVDLA_CDP_D_DATIN_SHIFTER_0_DATIN_SHIFTER_RANGE			4:0
#define NVDLA_CDP_D_DATIN_SHIFTER_0_DATIN_SHIFTER_SIZE				5


// Register NVDLA_CDP_D_DATOUT_OFFSET_0
#define NVDLA_CDP_D_DATOUT_OFFSET_0					32'hd080
#define NVDLA_CDP_D_DATOUT_OFFSET_0_DATOUT_OFFSET_RANGE			31:0
#define NVDLA_CDP_D_DATOUT_OFFSET_0_DATOUT_OFFSET_SIZE				32


// Register NVDLA_CDP_D_DATOUT_SCALE_0
#define NVDLA_CDP_D_DATOUT_SCALE_0					32'hd084
#define NVDLA_CDP_D_DATOUT_SCALE_0_DATOUT_SCALE_RANGE			15:0
#define NVDLA_CDP_D_DATOUT_SCALE_0_DATOUT_SCALE_SIZE				16


// Register NVDLA_CDP_D_DATOUT_SHIFTER_0
#define NVDLA_CDP_D_DATOUT_SHIFTER_0					32'hd088
#define NVDLA_CDP_D_DATOUT_SHIFTER_0_DATOUT_SHIFTER_RANGE			5:0
#define NVDLA_CDP_D_DATOUT_SHIFTER_0_DATOUT_SHIFTER_SIZE				6


// Register NVDLA_CDP_D_NAN_INPUT_NUM_0
#define NVDLA_CDP_D_NAN_INPUT_NUM_0					32'hd08c
#define NVDLA_CDP_D_NAN_INPUT_NUM_0_NAN_INPUT_NUM_RANGE			31:0
#define NVDLA_CDP_D_NAN_INPUT_NUM_0_NAN_INPUT_NUM_SIZE				32


// Register NVDLA_CDP_D_INF_INPUT_NUM_0
#define NVDLA_CDP_D_INF_INPUT_NUM_0					32'hd090
#define NVDLA_CDP_D_INF_INPUT_NUM_0_INF_INPUT_NUM_RANGE			31:0
#define NVDLA_CDP_D_INF_INPUT_NUM_0_INF_INPUT_NUM_SIZE				32


// Register NVDLA_CDP_D_NAN_OUTPUT_NUM_0
#define NVDLA_CDP_D_NAN_OUTPUT_NUM_0					32'hd094
#define NVDLA_CDP_D_NAN_OUTPUT_NUM_0_NAN_OUTPUT_NUM_RANGE			31:0
#define NVDLA_CDP_D_NAN_OUTPUT_NUM_0_NAN_OUTPUT_NUM_SIZE				32


// Register NVDLA_CDP_D_OUT_SATURATION_0
#define NVDLA_CDP_D_OUT_SATURATION_0					32'hd098
#define NVDLA_CDP_D_OUT_SATURATION_0_OUT_SATURATION_RANGE			31:0
#define NVDLA_CDP_D_OUT_SATURATION_0_OUT_SATURATION_SIZE				32


// Register NVDLA_CDP_D_PERF_ENABLE_0
#define NVDLA_CDP_D_PERF_ENABLE_0					32'hd09c
#define NVDLA_CDP_D_PERF_ENABLE_0_DMA_EN_RANGE			0:0
#define NVDLA_CDP_D_PERF_ENABLE_0_DMA_EN_SIZE				1
#define NVDLA_CDP_D_PERF_ENABLE_0_DMA_EN_DISABLE			1'h0
#define NVDLA_CDP_D_PERF_ENABLE_0_DMA_EN_ENABLE			1'h1
#define NVDLA_CDP_D_PERF_ENABLE_0_LUT_EN_RANGE			1:1
#define NVDLA_CDP_D_PERF_ENABLE_0_LUT_EN_SIZE				1
#define NVDLA_CDP_D_PERF_ENABLE_0_LUT_EN_DISABLE			1'h0
#define NVDLA_CDP_D_PERF_ENABLE_0_LUT_EN_ENABLE			1'h1


// Register NVDLA_CDP_D_PERF_WRITE_STALL_0
#define NVDLA_CDP_D_PERF_WRITE_STALL_0					32'hd0a0
#define NVDLA_CDP_D_PERF_WRITE_STALL_0_PERF_WRITE_STALL_RANGE			31:0
#define NVDLA_CDP_D_PERF_WRITE_STALL_0_PERF_WRITE_STALL_SIZE				32


// Register NVDLA_CDP_D_PERF_LUT_UFLOW_0
#define NVDLA_CDP_D_PERF_LUT_UFLOW_0					32'hd0a4
#define NVDLA_CDP_D_PERF_LUT_UFLOW_0_PERF_LUT_UFLOW_RANGE			31:0
#define NVDLA_CDP_D_PERF_LUT_UFLOW_0_PERF_LUT_UFLOW_SIZE				32


// Register NVDLA_CDP_D_PERF_LUT_OFLOW_0
#define NVDLA_CDP_D_PERF_LUT_OFLOW_0					32'hd0a8
#define NVDLA_CDP_D_PERF_LUT_OFLOW_0_PERF_LUT_OFLOW_RANGE			31:0
#define NVDLA_CDP_D_PERF_LUT_OFLOW_0_PERF_LUT_OFLOW_SIZE				32


// Register NVDLA_CDP_D_PERF_LUT_HYBRID_0
#define NVDLA_CDP_D_PERF_LUT_HYBRID_0					32'hd0ac
#define NVDLA_CDP_D_PERF_LUT_HYBRID_0_PERF_LUT_HYBRID_RANGE			31:0
#define NVDLA_CDP_D_PERF_LUT_HYBRID_0_PERF_LUT_HYBRID_SIZE				32


// Register NVDLA_CDP_D_PERF_LUT_LE_HIT_0
#define NVDLA_CDP_D_PERF_LUT_LE_HIT_0					32'hd0b0
#define NVDLA_CDP_D_PERF_LUT_LE_HIT_0_PERF_LUT_LE_HIT_RANGE			31:0
#define NVDLA_CDP_D_PERF_LUT_LE_HIT_0_PERF_LUT_LE_HIT_SIZE				32


// Register NVDLA_CDP_D_PERF_LUT_LO_HIT_0
#define NVDLA_CDP_D_PERF_LUT_LO_HIT_0					32'hd0b4
#define NVDLA_CDP_D_PERF_LUT_LO_HIT_0_PERF_LUT_LO_HIT_RANGE			31:0
#define NVDLA_CDP_D_PERF_LUT_LO_HIT_0_PERF_LUT_LO_HIT_SIZE				32


// Register NVDLA_CDP_D_CYA_0
#define NVDLA_CDP_D_CYA_0					32'hd0b8
#define NVDLA_CDP_D_CYA_0_CYA_RANGE			31:0
#define NVDLA_CDP_D_CYA_0_CYA_SIZE				32



//
// ADDRESS SPACES
//

#define BASE_ADDRESS_NVDLA_CDP	32'hd000