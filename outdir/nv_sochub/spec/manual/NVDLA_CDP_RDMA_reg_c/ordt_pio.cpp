//   Ordt 171103.01 autogenerated file 
//   Input: NVDLA_CDP_RDMA.rdl
//   Parms: opendla.parms
//   Date: Fri Jun 19 11:45:27 EEST 2020
//

#include "ordt_pio_common.hpp"
#include "ordt_pio.hpp"

// ------------------ ordt_addr_elem methods ------------------

ordt_addr_elem::ordt_addr_elem(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : m_startaddress(_m_startaddress),
    m_endaddress(_m_endaddress) {
}

bool  ordt_addr_elem::containsAddress(const uint64_t &addr) {
  return ((addr >= m_startaddress) && (addr <= m_endaddress));
}

bool  ordt_addr_elem::isBelowAddress(const uint64_t &addr) {
  return (addr > m_endaddress);
}

bool  ordt_addr_elem::isAboveAddress(const uint64_t &addr) {
  return (addr < m_startaddress);
}

bool  ordt_addr_elem::hasStartAddress(const uint64_t &addr) {
  return (addr == m_startaddress);
}

void  ordt_addr_elem::update_child_ptrs() {
}

// ------------------ ordt_regset methods ------------------

ordt_addr_elem*  ordt_regset::findAddrElem(const uint64_t &addr) {
  int lo = 0;
  int hi = m_children.size()-1;
  int mid = 0;
  while (lo <= hi) {
     mid = (lo + hi) / 2;
     if (m_children[mid]->containsAddress(addr)) {
        //outElem = m_children[mid];
        return m_children[mid];
     }
     else if (m_children[mid]->isAboveAddress(addr))
        hi = mid - 1;
     else
        lo = mid + 1;
  }
  return nullptr;
}

ordt_regset::ordt_regset(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_addr_elem(_m_startaddress, _m_endaddress) {
}

int  ordt_regset::write(const uint64_t &addr, const ordt_data &wdata) {
     if (this->containsAddress(addr)) {
        childElem = this->findAddrElem(addr);
        if (childElem != nullptr) { return childElem->write(addr, wdata); }
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in regset\n";
  #endif
     return 8;
}

int  ordt_regset::read(const uint64_t &addr, ordt_data &rdata) {
     if (this->containsAddress(addr)) {
        childElem = this->findAddrElem(addr);
        if (childElem != nullptr) { return childElem->read(addr, rdata); }
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in regset\n";
  #endif
     rdata.clear();
     return 8;
}

// ------------------ ordt_reg methods ------------------

ordt_reg::ordt_reg(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_addr_elem(_m_startaddress, _m_endaddress) {
}

ordt_reg::ordt_reg(const ordt_reg &_old)
  : ordt_addr_elem(_old),
    m_mutex() {
}

void  ordt_reg::write(const ordt_data &wdata) {
}

int  ordt_reg::write(const uint64_t &addr, const ordt_data &wdata) {
     return 0;
}

void  ordt_reg::read(ordt_data &rdata) {
}

int  ordt_reg::read(const uint64_t &addr, ordt_data &rdata) {
     return 0;
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_S_STATUS methods ------------------

ordt_rg_NVDLA_CDP_RDMA_S_STATUS::ordt_rg_NVDLA_CDP_RDMA_S_STATUS(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    STATUS_0(0, 2, 0x0, r_std, w_none),
    STATUS_1(16, 2, 0x0, r_std, w_none) {
}

int  ordt_rg_NVDLA_CDP_RDMA_S_STATUS::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_S_STATUS at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_S_STATUS\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_S_STATUS::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  STATUS_0.write(wdata);
  STATUS_1.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_S_STATUS::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_S_STATUS at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_S_STATUS\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_S_STATUS::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  STATUS_0.read(rdata);
  STATUS_1.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_S_POINTER methods ------------------

ordt_rg_NVDLA_CDP_RDMA_S_POINTER::ordt_rg_NVDLA_CDP_RDMA_S_POINTER(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    PRODUCER(0, 1, 0x0, r_std, w_std),
    CONSUMER(16, 1, 0x0, r_std, w_none) {
}

int  ordt_rg_NVDLA_CDP_RDMA_S_POINTER::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_S_POINTER at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_S_POINTER\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_S_POINTER::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  PRODUCER.write(wdata);
  CONSUMER.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_S_POINTER::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_S_POINTER at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_S_POINTER\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_S_POINTER::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  PRODUCER.read(rdata);
  CONSUMER.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE::ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    OP_EN(0, 1, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  OP_EN.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_OP_ENABLE::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  OP_EN.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH::ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    WIDTH(0, 13, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  WIDTH.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_WIDTH::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  WIDTH.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT::ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    HEIGHT(0, 13, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  HEIGHT.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_HEIGHT::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  HEIGHT.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL::ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    CHANNEL(0, 13, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  CHANNEL.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_DATA_CUBE_CHANNEL::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  CHANNEL.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW::ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    SRC_BASE_ADDR_LOW(0, 32, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  SRC_BASE_ADDR_LOW.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_LOW::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  SRC_BASE_ADDR_LOW.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH::ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    SRC_BASE_ADDR_HIGH(0, 32, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  SRC_BASE_ADDR_HIGH.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_BASE_ADDR_HIGH::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  SRC_BASE_ADDR_HIGH.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE::ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    SRC_LINE_STRIDE(0, 32, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  SRC_LINE_STRIDE.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_LINE_STRIDE::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  SRC_LINE_STRIDE.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE::ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    SRC_SURFACE_STRIDE(0, 32, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  SRC_SURFACE_STRIDE.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_SURFACE_STRIDE::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  SRC_SURFACE_STRIDE.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG::ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    SRC_RAM_TYPE(0, 1, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  SRC_RAM_TYPE.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_DMA_CFG::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  SRC_RAM_TYPE.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN::ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    SRC_COMPRESSION_EN(0, 1, 0x0, r_std, w_none) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  SRC_COMPRESSION_EN.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_SRC_COMPRESSION_EN::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  SRC_COMPRESSION_EN.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE::ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    OPERATION_MODE(0, 2, 0x0, r_std, w_none) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  OPERATION_MODE.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_OPERATION_MODE::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  OPERATION_MODE.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT::ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    INPUT_DATA(0, 2, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  INPUT_DATA.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_DATA_FORMAT::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  INPUT_DATA.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE::ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    DMA_EN(0, 1, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  DMA_EN.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_PERF_ENABLE::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  DMA_EN.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL::ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    PERF_READ_STALL(0, 32, 0x0, r_std, w_none) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  PERF_READ_STALL.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_PERF_READ_STALL::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  PERF_READ_STALL.read(rdata);
}

// ------------------ ordt_rg_NVDLA_CDP_RDMA_D_CYA methods ------------------

ordt_rg_NVDLA_CDP_RDMA_D_CYA::ordt_rg_NVDLA_CDP_RDMA_D_CYA(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_reg(_m_startaddress, _m_endaddress),
    CYA(0, 32, 0x0, r_std, w_std) {
}

int  ordt_rg_NVDLA_CDP_RDMA_D_CYA::write(const uint64_t &addr, const ordt_data &wdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write of reg ordt_rg_NVDLA_CDP_RDMA_D_CYA at addr="<< addr << ", data=" << wdata.to_string() << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->write(wdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> write to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_CYA\n";
  #endif
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_CYA::write(const ordt_data &wdata) {
  std::lock_guard<std::mutex> m_guard(m_mutex);
  CYA.write(wdata);
}

int  ordt_rg_NVDLA_CDP_RDMA_D_CYA::read(const uint64_t &addr, ordt_data &rdata) {
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read of reg ordt_rg_NVDLA_CDP_RDMA_D_CYA at addr="<< addr << "\n";
  #endif
     if (this->hasStartAddress(addr)) {
        this->read(rdata);
        return 0;
     }
  #ifdef ORDT_PIO_VERBOSE
     std::cout << "--> read to invalid address " << addr << " in reg ordt_rg_NVDLA_CDP_RDMA_D_CYA\n";
  #endif
     rdata.clear();
     return 8;
}

void  ordt_rg_NVDLA_CDP_RDMA_D_CYA::read(ordt_data &rdata) {
  rdata.clear();
  for (int widx=0; widx<((m_endaddress - m_startaddress + 1)/4); widx++) rdata.push_back(0);
  CYA.read(rdata);
}

// ------------------ ordt_rset_NVDLA_CDP_RDMA methods ------------------

ordt_rset_NVDLA_CDP_RDMA::ordt_rset_NVDLA_CDP_RDMA(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_regset(_m_startaddress, _m_endaddress),
    S_STATUS(_m_startaddress + 0x0, _m_startaddress + 0x3),
    S_POINTER(_m_startaddress + 0x4, _m_startaddress + 0x7),
    D_OP_ENABLE(_m_startaddress + 0x8, _m_startaddress + 0xb),
    D_DATA_CUBE_WIDTH(_m_startaddress + 0xc, _m_startaddress + 0xf),
    D_DATA_CUBE_HEIGHT(_m_startaddress + 0x10, _m_startaddress + 0x13),
    D_DATA_CUBE_CHANNEL(_m_startaddress + 0x14, _m_startaddress + 0x17),
    D_SRC_BASE_ADDR_LOW(_m_startaddress + 0x18, _m_startaddress + 0x1b),
    D_SRC_BASE_ADDR_HIGH(_m_startaddress + 0x1c, _m_startaddress + 0x1f),
    D_SRC_LINE_STRIDE(_m_startaddress + 0x20, _m_startaddress + 0x23),
    D_SRC_SURFACE_STRIDE(_m_startaddress + 0x24, _m_startaddress + 0x27),
    D_SRC_DMA_CFG(_m_startaddress + 0x28, _m_startaddress + 0x2b),
    D_SRC_COMPRESSION_EN(_m_startaddress + 0x2c, _m_startaddress + 0x2f),
    D_OPERATION_MODE(_m_startaddress + 0x30, _m_startaddress + 0x33),
    D_DATA_FORMAT(_m_startaddress + 0x34, _m_startaddress + 0x37),
    D_PERF_ENABLE(_m_startaddress + 0x38, _m_startaddress + 0x3b),
    D_PERF_READ_STALL(_m_startaddress + 0x3c, _m_startaddress + 0x3f),
    D_CYA(_m_startaddress + 0x40, _m_startaddress + 0x43) {
  m_children.push_back(&S_STATUS);
  m_children.push_back(&S_POINTER);
  m_children.push_back(&D_OP_ENABLE);
  m_children.push_back(&D_DATA_CUBE_WIDTH);
  m_children.push_back(&D_DATA_CUBE_HEIGHT);
  m_children.push_back(&D_DATA_CUBE_CHANNEL);
  m_children.push_back(&D_SRC_BASE_ADDR_LOW);
  m_children.push_back(&D_SRC_BASE_ADDR_HIGH);
  m_children.push_back(&D_SRC_LINE_STRIDE);
  m_children.push_back(&D_SRC_SURFACE_STRIDE);
  m_children.push_back(&D_SRC_DMA_CFG);
  m_children.push_back(&D_SRC_COMPRESSION_EN);
  m_children.push_back(&D_OPERATION_MODE);
  m_children.push_back(&D_DATA_FORMAT);
  m_children.push_back(&D_PERF_ENABLE);
  m_children.push_back(&D_PERF_READ_STALL);
  m_children.push_back(&D_CYA);
}

void  ordt_rset_NVDLA_CDP_RDMA::update_child_ptrs() {
  m_children.clear();
  m_children.push_back(&S_STATUS);
  m_children.push_back(&S_POINTER);
  m_children.push_back(&D_OP_ENABLE);
  m_children.push_back(&D_DATA_CUBE_WIDTH);
  m_children.push_back(&D_DATA_CUBE_HEIGHT);
  m_children.push_back(&D_DATA_CUBE_CHANNEL);
  m_children.push_back(&D_SRC_BASE_ADDR_LOW);
  m_children.push_back(&D_SRC_BASE_ADDR_HIGH);
  m_children.push_back(&D_SRC_LINE_STRIDE);
  m_children.push_back(&D_SRC_SURFACE_STRIDE);
  m_children.push_back(&D_SRC_DMA_CFG);
  m_children.push_back(&D_SRC_COMPRESSION_EN);
  m_children.push_back(&D_OPERATION_MODE);
  m_children.push_back(&D_DATA_FORMAT);
  m_children.push_back(&D_PERF_ENABLE);
  m_children.push_back(&D_PERF_READ_STALL);
  m_children.push_back(&D_CYA);
}

// ------------------ ordt_root methods ------------------

ordt_root::ordt_root()
  : ordt_root(0x0, 0xc043) {
}

ordt_root::ordt_root(uint64_t _m_startaddress, uint64_t _m_endaddress)
  : ordt_regset(_m_startaddress, _m_endaddress),
    NVDLA_CDP_RDMA(_m_startaddress + 0xc000, _m_startaddress + 0xc07f) {
  m_children.push_back(&NVDLA_CDP_RDMA);
}

void  ordt_root::update_child_ptrs() {
  m_children.clear();
  m_children.push_back(&NVDLA_CDP_RDMA);
}

