SRC = ./SRC
TST = ./TESTING
EXM = ./EXAMPLE
BLS = ./CBLAS
FOR = ./FORTRAN
TGTSRC = ../SuperLU/SRC
TGTTST = ../SuperLU/TESTING
TGTEXM = ../SuperLU/EXAMPLE
TGTBLS = ../SuperLU/CBLAS
TGTFOR = ../SuperLU/FORTRAN

all: single double scomplex dcomplex


single: $(TGTSRC)/sgssv.c $(TGTSRC)/sgssvx.c $(TGTSRC)/scolumn_bmod.c \
	$(TGTSRC)/sgstrf.c $(TGTSRC)/spanel_bmod.c $(TGTSRC)/ssnode_dfs.c \
	$(TGTSRC)/scolumn_dfs.c $(TGTSRC)/sgstrs.c $(TGTSRC)/spanel_dfs.c \
	$(TGTSRC)/ssp_blas2.c $(TGTSRC)/sgscon.c $(TGTSRC)/slacon.c \
	$(TGTSRC)/spivotL.c $(TGTSRC)/ssp_blas3.c $(TGTSRC)/sgsequ.c \
	$(TGTSRC)/spivotgrowth.c $(TGTSRC)/sutil.c \
	$(TGTSRC)/sgsrfs.c $(TGTSRC)/slangs.c $(TGTSRC)/spruneL.c \
	$(TGTSRC)/sgssv.c $(TGTSRC)/slaqgs.c \
        $(TGTSRC)/sreadhb.c $(TGTSRC)/sreadrb.c $(TGTSRC)/sreadtriple.c \
	$(TGTSRC)/sgssvx.c $(TGTSRC)/smemory.c $(TGTSRC)/ssnode_bmod.c \
	$(TGTSRC)/slu_sdefs.h $(TGTSRC)/scopy_to_ucol.c \
	$(TGTSRC)/smyblas2.c \
	\
	$(TGTSRC)/sgsisx.c  $(TGTSRC)/sgsitrf.c \
	$(TGTSRC)/sldperm.c $(TGTSRC)/sdiagonal.c \
	$(TGTSRC)/ilu_sdrop_row.c $(TGTSRC)/ilu_ssnode_dfs.c \
	$(TGTSRC)/ilu_scolumn_dfs.c $(TGTSRC)/ilu_spanel_dfs.c \
	$(TGTSRC)/ilu_scopy_to_ucol.c $(TGTSRC)/ilu_spivotL.c \
	\
	$(TGTTST)/sp_sconvert.c $(TGTTST)/sgst01.c $(TGTTST)/sgst02.c \
	$(TGTTST)/sgst04.c $(TGTTST)/sgst07.c $(TGTTST)/sdrive.c \
	\
	$(TGTEXM)/slinsol.c $(TGTEXM)/slinsol1.c \
	$(TGTEXM)/slinsolx.c $(TGTEXM)/slinsolx1.c \
	$(TGTEXM)/slinsolx2.c $(TGTEXM)/slinsolx3.c \
	$(TGTEXM)/sitersol.c $(TGTEXM)/sitersol1.c $(TGTEXM)/sfgmr.c \
	\
	$(TGTFOR)/c_fortran_sgssv.c

$(TGTSRC)/sgssv.c:	$(SRC)/xgssv.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sgssvx.c:	$(SRC)/xgssvx.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sgstrf.c:	$(SRC)/xgstrf.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sgstrs.c:	$(SRC)/xgstrs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sgscon.c:	$(SRC)/xgscon.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/smemory.c:	$(SRC)/xmemory.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sgsequ.c:	$(SRC)/xgsequ.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/slaqgs.c:	$(SRC)/xlaqgs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sgsrfs.c:	$(SRC)/xgsrfs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/slacon.c:	$(SRC)/xlacon.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/slangs.c:	$(SRC)/xlangs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/scolumn_bmod.c:	$(SRC)/xcolumn_bmod.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/scolumn_dfs.c:	$(SRC)/xcolumn_dfs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/spanel_bmod.c:	$(SRC)/xpanel_bmod.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/spanel_dfs.c:	$(SRC)/xpanel_dfs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/spivotL.c:	$(SRC)/xpivotL.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/spivotgrowth.c:	$(SRC)/xpivotgrowth.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/spruneL.c:	$(SRC)/xpruneL.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sreadhb.c:	$(SRC)/xreadhb.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sreadrb.c:	$(SRC)/xreadrb.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sreadtriple.c: $(SRC)/xreadtriple.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ssnode_bmod.c:	$(SRC)/xsnode_bmod.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ssnode_dfs.c:	$(SRC)/xsnode_dfs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ssp_blas2.c:	$(SRC)/xsp_blas2.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ssp_blas3.c:	$(SRC)/xsp_blas3.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sutil.c:	$(SRC)/xutil.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/slu_sdefs.h:	$(SRC)/slu_xdefs.h.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/scopy_to_ucol.c:	$(SRC)/xcopy_to_ucol.base
	extract -b $? -o $@ precision=single


$(TGTTST)/sp_sconvert.c:	$(TST)/sp_xconvert.base
	extract -b $? -o $@ precision=single

$(TGTTST)/sgst01.c:	$(TST)/xgst01.base
	extract -b $? -o $@ precision=single

$(TGTTST)/sgst02.c:	$(TST)/xgst02.base
	extract -b $? -o $@ precision=single

$(TGTTST)/sgst04.c:	$(TST)/xgst04.base
	extract -b $? -o $@ precision=single

$(TGTTST)/sgst07.c:	$(TST)/xgst07.base
	extract -b $? -o $@ precision=single

$(TGTTST)/sdrive.c:	$(TST)/xdrive.base
	extract -b $? -o $@ precision=single

$(TGTEXM)/slinsol.c:	$(EXM)/xlinsol.base
	extract -b $? -o $@ precision=single

$(TGTEXM)/slinsol1.c:	$(EXM)/xlinsol1.base
	extract -b $? -o $@ precision=single

$(TGTEXM)/slinsolx.c:	$(EXM)/xlinsolx.base
	extract -b $? -o $@ precision=single

$(TGTEXM)/slinsolx1.c:	$(EXM)/xlinsolx1.base
	extract -b $? -o $@ precision=single

$(TGTEXM)/slinsolx2.c:	$(EXM)/xlinsolx2.base
	extract -b $? -o $@ precision=single

$(TGTEXM)/slinsolx3.c:	$(EXM)/xlinsolx3.base
	extract -b $? -o $@ precision=single

$(TGTEXM)/sitersol.c:	$(EXM)/xitersol.base
	extract -b $? -o $@ precision=single

$(TGTEXM)/sitersol1.c:	$(EXM)/xitersol1.base
	extract -b $? -o $@ precision=single

$(TGTEXM)/sfgmr.c:	$(EXM)/xfgmr.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/smyblas2.c:	$(SRC)/xmyblas2.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sgsisx.c:	$(SRC)/xgsisx.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sgsitrf.c:	$(SRC)/xgsitrf.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sldperm.c:	$(SRC)/xldperm.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/sdiagonal.c:	$(SRC)/xdiagonal.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ilu_sdrop_row.c:	$(SRC)/ilu_xdrop_row.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ilu_ssnode_dfs.c:	$(SRC)/ilu_xsnode_dfs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ilu_scolumn_dfs.c:	$(SRC)/ilu_xcolumn_dfs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ilu_spanel_dfs.c:	$(SRC)/ilu_xpanel_dfs.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ilu_scopy_to_ucol.c:	$(SRC)/ilu_xcopy_to_ucol.base
	extract -b $? -o $@ precision=single

$(TGTSRC)/ilu_spivotL.c:	$(SRC)/ilu_xpivotL.base
	extract -b $? -o $@ precision=single

$(TGTFOR)/c_fortran_sgssv.c: $(FOR)/c_fortran_xgssv.base
	extract -b $? -o $@ precision=single


double: $(TGTSRC)/dgssv.c $(TGTSRC)/dgssvx.c $(TGTSRC)/dcolumn_bmod.c \
	$(TGTSRC)/dgstrf.c $(TGTSRC)/dpanel_bmod.c $(TGTSRC)/dsnode_dfs.c \
	$(TGTSRC)/dcolumn_dfs.c $(TGTSRC)/dgstrs.c $(TGTSRC)/dpanel_dfs.c \
	$(TGTSRC)/dsp_blas2.c $(TGTSRC)/dgscon.c $(TGTSRC)/dlacon.c \
	$(TGTSRC)/dpivotL.c $(TGTSRC)/dsp_blas3.c $(TGTSRC)/dgsequ.c \
	$(TGTSRC)/dpivotgrowth.c $(TGTSRC)/dutil.c \
	$(TGTSRC)/dgsrfs.c $(TGTSRC)/dlangs.c $(TGTSRC)/dpruneL.c \
	$(TGTSRC)/dgssv.c $(TGTSRC)/dlaqgs.c \
	$(TGTSRC)/dreadhb.c $(TGTSRC)/dreadrb.c $(TGTSRC)/dreadtriple.c \
	$(TGTSRC)/dgssvx.c $(TGTSRC)/dmemory.c $(TGTSRC)/dsnode_bmod.c \
	$(TGTSRC)/slu_ddefs.h $(TGTSRC)/dcopy_to_ucol.c \
	$(TGTSRC)/dmyblas2.c \
	\
	$(TGTSRC)/dgsisx.c $(TGTSRC)/dgsitrf.c \
	$(TGTSRC)/dldperm.c $(TGTSRC)/ddiagonal.c \
	$(TGTSRC)/ilu_ddrop_row.c $(TGTSRC)/ilu_dsnode_dfs.c \
	$(TGTSRC)/ilu_dcolumn_dfs.c $(TGTSRC)/ilu_dpanel_dfs.c \
	$(TGTSRC)/ilu_dcopy_to_ucol.c $(TGTSRC)/ilu_dpivotL.c \
	\
	$(TGTTST)/sp_dconvert.c $(TGTTST)/dgst01.c $(TGTTST)/dgst02.c \
	$(TGTTST)/dgst04.c $(TGTTST)/dgst07.c $(TGTTST)/ddrive.c \
	\
	$(TGTEXM)/dlinsol.c $(TGTEXM)/dlinsol1.c \
	$(TGTEXM)/dlinsolx.c $(TGTEXM)/dlinsolx1.c \
	$(TGTEXM)/dlinsolx2.c $(TGTEXM)/dlinsolx3.c \
	$(TGTEXM)/ditersol.c $(TGTEXM)/ditersol1.c $(TGTEXM)/dfgmr.c \
	\
	$(TGTFOR)/c_fortran_dgssv.c

$(TGTSRC)/dgssv.c:	$(SRC)/xgssv.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dgssvx.c:	$(SRC)/xgssvx.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dgstrf.c:	$(SRC)/xgstrf.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dgstrs.c:	$(SRC)/xgstrs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dgscon.c:	$(SRC)/xgscon.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dmemory.c:	$(SRC)/xmemory.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dgsequ.c:	$(SRC)/xgsequ.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dlaqgs.c:	$(SRC)/xlaqgs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dgsrfs.c:	$(SRC)/xgsrfs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dlacon.c:	$(SRC)/xlacon.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dlangs.c:	$(SRC)/xlangs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dcolumn_bmod.c:	$(SRC)/xcolumn_bmod.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dcolumn_dfs.c:	$(SRC)/xcolumn_dfs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dpanel_bmod.c:	$(SRC)/xpanel_bmod.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dpanel_dfs.c:	$(SRC)/xpanel_dfs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dpivotL.c:	$(SRC)/xpivotL.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dpivotgrowth.c:	$(SRC)/xpivotgrowth.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dpruneL.c:	$(SRC)/xpruneL.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dreadhb.c:	$(SRC)/xreadhb.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dreadrb.c:	$(SRC)/xreadrb.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dreadtriple.c: $(SRC)/xreadtriple.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dsnode_bmod.c:	$(SRC)/xsnode_bmod.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dsnode_dfs.c:	$(SRC)/xsnode_dfs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dsp_blas2.c:	$(SRC)/xsp_blas2.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dsp_blas3.c:	$(SRC)/xsp_blas3.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dutil.c:	$(SRC)/xutil.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/slu_ddefs.h:	$(SRC)/slu_xdefs.h.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dcopy_to_ucol.c:	$(SRC)/xcopy_to_ucol.base
	extract -b $? -o $@ precision=double

$(TGTTST)/sp_dconvert.c:	$(TST)/sp_xconvert.base
	extract -b $? -o $@ precision=double

$(TGTTST)/dgst01.c:	$(TST)/xgst01.base
	extract -b $? -o $@ precision=double

$(TGTTST)/dgst02.c:	$(TST)/xgst02.base
	extract -b $? -o $@ precision=double

$(TGTTST)/dgst04.c:	$(TST)/xgst04.base
	extract -b $? -o $@ precision=double

$(TGTTST)/dgst07.c:	$(TST)/xgst07.base
	extract -b $? -o $@ precision=double

$(TGTTST)/ddrive.c:	$(TST)/xdrive.base
	extract -b $? -o $@ precision=double

$(TGTEXM)/dlinsol.c:	$(EXM)/xlinsol.base
	extract -b $? -o $@ precision=double

$(TGTEXM)/dlinsol1.c:	$(EXM)/xlinsol1.base
	extract -b $? -o $@ precision=double

$(TGTEXM)/dlinsolx.c:	$(EXM)/xlinsolx.base
	extract -b $? -o $@ precision=double

$(TGTEXM)/dlinsolx1.c:	$(EXM)/xlinsolx1.base
	extract -b $? -o $@ precision=double

$(TGTEXM)/dlinsolx2.c:	$(EXM)/xlinsolx2.base
	extract -b $? -o $@ precision=double

$(TGTEXM)/dlinsolx3.c:	$(EXM)/xlinsolx3.base
	extract -b $? -o $@ precision=double

$(TGTEXM)/ditersol.c:	$(EXM)/xitersol.base
	extract -b $? -o $@ precision=double

$(TGTEXM)/ditersol1.c:	$(EXM)/xitersol1.base
	extract -b $? -o $@ precision=double

$(TGTEXM)/dfgmr.c:	$(EXM)/xfgmr.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dmyblas2.c:	$(SRC)/xmyblas2.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dgsisx.c:	$(SRC)/xgsisx.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dgsitrf.c:	$(SRC)/xgsitrf.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/dldperm.c:	$(SRC)/xldperm.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/ddiagonal.c:	$(SRC)/xdiagonal.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/ilu_ddrop_row.c:	$(SRC)/ilu_xdrop_row.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/ilu_dsnode_dfs.c:	$(SRC)/ilu_xsnode_dfs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/ilu_dcolumn_dfs.c:	$(SRC)/ilu_xcolumn_dfs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/ilu_dpanel_dfs.c:	$(SRC)/ilu_xpanel_dfs.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/ilu_dcopy_to_ucol.c:	$(SRC)/ilu_xcopy_to_ucol.base
	extract -b $? -o $@ precision=double

$(TGTSRC)/ilu_dpivotL.c:	$(SRC)/ilu_xpivotL.base
	extract -b $? -o $@ precision=double

$(TGTFOR)/c_fortran_dgssv.c: $(FOR)/c_fortran_xgssv.base
	extract -b $? -o $@ precision=double


scomplex: \
	$(TGTSRC)/cgssv.c $(TGTSRC)/cgssvx.c \
	$(TGTSRC)/cgstrf.c $(TGTSRC)/cgstrs.c \
	$(TGTSRC)/cpanel_dfs.c $(TGTSRC)/cpanel_bmod.c \
	$(TGTSRC)/csnode_dfs.c $(TGTSRC)/csnode_bmod.c \
	$(TGTSRC)/ccolumn_dfs.c $(TGTSRC)/ccolumn_bmod.c \
	$(TGTSRC)/csp_blas2.c $(TGTSRC)/cgscon.c \
	$(TGTSRC)/cpivotL.c $(TGTSRC)/csp_blas3.c $(TGTSRC)/cgsequ.c \
	$(TGTSRC)/cpivotgrowth.c $(TGTSRC)/cutil.c \
	$(TGTSRC)/cgsrfs.c $(TGTSRC)/clangs.c $(TGTSRC)/cpruneL.c \
	$(TGTSRC)/claqgs.c $(TGTSRC)/creadhb.c \
	$(TGTSRC)/creadrb.c $(TGTSRC)/creadtriple.c \
	$(TGTSRC)/cmemory.c $(TGTSRC)/zsnode_bmod.c \
	$(TGTSRC)/slu_cdefs.h $(TGTSRC)/ccopy_to_ucol.c \
	$(TGTSRC)/scomplex.c $(TGTSRC)/slu_scomplex.h \
	$(TGTSRC)/scsum1.c $(TGTSRC)/icmax1.c $(TGTSRC)/clacon.c \
	\
	$(TGTTST)/sp_cconvert.c $(TGTTST)/cgst01.c $(TGTTST)/cgst02.c \
	$(TGTTST)/cgst04.c $(TGTTST)/cgst07.c $(TGTTST)/cdrive.c \
	$(TGTSRC)/cmyblas2.c \
	\
	$(TGTSRC)/cgsisx.c $(TGTSRC)/cgsitrf.c \
	$(TGTSRC)/cldperm.c $(TGTSRC)/cdiagonal.c \
	$(TGTSRC)/ilu_cdrop_row.c $(TGTSRC)/ilu_csnode_dfs.c \
	$(TGTSRC)/ilu_ccolumn_dfs.c $(TGTSRC)/ilu_cpanel_dfs.c \
	$(TGTSRC)/ilu_ccopy_to_ucol.c $(TGTSRC)/ilu_cpivotL.c \
	\
	$(TGTEXM)/clinsol.c $(TGTEXM)/clinsol1.c \
	$(TGTEXM)/clinsolx.c $(TGTEXM)/clinsolx1.c \
	$(TGTEXM)/clinsolx2.c $(TGTEXM)/clinsolx3.c \
	$(TGTEXM)/citersol.c $(TGTEXM)/citersol1.c $(TGTEXM)/cfgmr.c \
	\
	$(TGTFOR)/c_fortran_cgssv.c

$(TGTSRC)/scsum1.c:	$(SRC)/scsum1.c
	cp $? $@

$(TGTSRC)/icmax1.c:	$(SRC)/icmax1.c
	cp $? $@

$(TGTSRC)/clacon.c:	$(SRC)/xlacon.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cgssv.c:	$(SRC)/xgssv.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cgssvx.c:	$(SRC)/xgssvx.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/ccolumn_bmod.c:	$(SRC)/xcolumn_bmod.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cgstrf.c: $(SRC)/xgstrf.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cpanel_bmod.c: $(SRC)/xpanel_bmod.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/csnode_dfs.c: $(SRC)/xsnode_dfs.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/ccolumn_dfs.c: $(SRC)/xcolumn_dfs.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cgstrs.c: $(SRC)/xgstrs.base 
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cpanel_dfs.c: $(SRC)/xpanel_dfs.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/csp_blas2.c: $(SRC)/xsp_blas2.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cgscon.c: $(SRC)/xgscon.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cpivotL.c: $(SRC)/xpivotL.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/csp_blas3.c: $(SRC)/xsp_blas3.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cgsequ.c: $(SRC)/xgsequ.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cpivotgrowth.c: $(SRC)/xpivotgrowth.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cutil.c: $(SRC)/xutil.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cgsrfs.c: $(SRC)/xgsrfs.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/clangs.c: $(SRC)/xlangs.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cpruneL.c: $(SRC)/xpruneL.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/claqgs.c: $(SRC)/xlaqgs.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/creadhb.c: $(SRC)/xreadhb.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/creadrb.c: $(SRC)/xreadrb.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/creadtriple.c: $(SRC)/xreadtriple.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cmemory.c: $(SRC)/xmemory.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/csnode_bmod.c: $(SRC)/xsnode_bmod.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/slu_cdefs.h: $(SRC)/slu_xdefs.h.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/ccopy_to_ucol.c:	$(SRC)/xcopy_to_ucol.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/scomplex.c: $(SRC)/xcomplex.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/slu_scomplex.h: $(SRC)/slu_xcomplex.h.base
	extract -b $? -o $@ precision=scomplex

$(TGTTST)/sp_cconvert.c: $(TST)/sp_xconvert.base
	extract -b $? -o $@ precision=scomplex

$(TGTTST)/cgst01.c: $(TST)/xgst01.base
	extract -b $? -o $@ precision=scomplex

$(TGTTST)/cgst02.c: $(TST)/xgst02.base
	extract -b $? -o $@ precision=scomplex

$(TGTTST)/cgst04.c: $(TST)/xgst04.base
	extract -b $? -o $@ precision=scomplex

$(TGTTST)/cgst07.c: $(TST)/xgst07.base
	extract -b $? -o $@ precision=scomplex

$(TGTTST)/cdrive.c: $(TST)/xdrive.base
	extract -b $? -o $@ precision=scomplex

$(TGTEXM)/clinsol.c: $(EXM)/xlinsol.base
	extract -b $? -o $@ precision=scomplex

$(TGTEXM)/clinsol1.c: $(EXM)/xlinsol1.base
	extract -b $? -o $@ precision=scomplex

$(TGTEXM)/clinsolx.c: $(EXM)/xlinsolx.base
	extract -b $? -o $@ precision=scomplex

$(TGTEXM)/clinsolx1.c: $(EXM)/xlinsolx1.base
	extract -b $? -o $@ precision=scomplex

$(TGTEXM)/clinsolx2.c: $(EXM)/xlinsolx2.base
	extract -b $? -o $@ precision=scomplex

$(TGTEXM)/clinsolx3.c: $(EXM)/xlinsolx3.base
	extract -b $? -o $@ precision=scomplex

$(TGTEXM)/citersol.c: $(EXM)/xitersol.base
	extract -b $? -o $@ precision=scomplex

$(TGTEXM)/citersol1.c: $(EXM)/xitersol1.base
	extract -b $? -o $@ precision=scomplex

$(TGTEXM)/cfgmr.c: $(EXM)/xfgmr.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cmyblas2.c: $(SRC)/xmyblas2.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cgsisx.c: $(SRC)/xgsisx.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cgsitrf.c: $(SRC)/xgsitrf.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cldperm.c: $(SRC)/xldperm.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/cdiagonal.c: $(SRC)/xdiagonal.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/ilu_cdrop_row.c: $(SRC)/ilu_xdrop_row.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/ilu_csnode_dfs.c: $(SRC)/ilu_xsnode_dfs.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/ilu_ccolumn_dfs.c: $(SRC)/ilu_xcolumn_dfs.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/ilu_cpanel_dfs.c: $(SRC)/ilu_xpanel_dfs.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/ilu_ccopy_to_ucol.c: $(SRC)/ilu_xcopy_to_ucol.base
	extract -b $? -o $@ precision=scomplex

$(TGTSRC)/ilu_cpivotL.c: $(SRC)/ilu_xpivotL.base
	extract -b $? -o $@ precision=scomplex

$(TGTFOR)/c_fortran_cgssv.c: $(FOR)/c_fortran_xgssv.base
	extract -b $? -o $@ precision=scomplex

dcomplex: \
	$(TGTSRC)/zgssv.c $(TGTSRC)/zgssvx.c $(TGTSRC)/zcolumn_bmod.c \
	$(TGTSRC)/zgstrf.c $(TGTSRC)/zpanel_bmod.c $(TGTSRC)/zsnode_dfs.c \
	$(TGTSRC)/zcolumn_dfs.c $(TGTSRC)/zgstrs.c $(TGTSRC)/zpanel_dfs.c \
	$(TGTSRC)/zsp_blas2.c $(TGTSRC)/zgscon.c \
	$(TGTSRC)/zpivotL.c $(TGTSRC)/zsp_blas3.c $(TGTSRC)/zgsequ.c \
	$(TGTSRC)/zpivotgrowth.c $(TGTSRC)/zutil.c \
	$(TGTSRC)/zgsrfs.c $(TGTSRC)/zlangs.c $(TGTSRC)/zpruneL.c \
	$(TGTSRC)/zlaqgs.c $(TGTSRC)/zreadhb.c \
	$(TGTSRC)/zreadrb.c $(TGTSRC)/zreadtriple.c \
	$(TGTSRC)/zmemory.c $(TGTSRC)/zsnode_bmod.c \
	$(TGTSRC)/slu_zdefs.h $(TGTSRC)/zcopy_to_ucol.c \
	$(TGTSRC)/dcomplex.c $(TGTSRC)/slu_dcomplex.h \
	$(TGTSRC)/dzsum1.c $(TGTSRC)/izmax1.c $(TGTSRC)/zlacon.c \
	$(TGTSRC)/zmyblas2.c \
	\
	$(TGTSRC)/zgsisx.c $(TGTSRC)/zgsitrf.c \
	$(TGTSRC)/zldperm.c $(TGTSRC)/zdiagonal.c \
	$(TGTSRC)/ilu_zdrop_row.c $(TGTSRC)/ilu_zsnode_dfs.c \
	$(TGTSRC)/ilu_zcolumn_dfs.c $(TGTSRC)/ilu_zpanel_dfs.c \
	$(TGTSRC)/ilu_zcopy_to_ucol.c $(TGTSRC)/ilu_zpivotL.c \
	\
	$(TGTTST)/sp_zconvert.c $(TGTTST)/zgst01.c $(TGTTST)/zgst02.c \
	$(TGTTST)/zgst04.c $(TGTTST)/zgst07.c $(TGTTST)/zdrive.c \
	\
	$(TGTEXM)/zlinsol.c $(TGTEXM)/zlinsol1.c \
	$(TGTEXM)/zlinsolx.c $(TGTEXM)/zlinsolx1.c \
	$(TGTEXM)/zlinsolx2.c $(TGTEXM)/zlinsolx3.c \
	$(TGTEXM)/zitersol.c $(TGTEXM)/zitersol1.c $(TGTEXM)/zfgmr.c \
	\
	$(TGTFOR)/c_fortran_zgssv.c \

$(TGTSRC)/dzsum1.c:	$(SRC)/dzsum1.c
	cp $? $@

$(TGTSRC)/izmax1.c:	$(SRC)/izmax1.c
	cp $? $@

$(TGTSRC)/zlacon.c:	$(SRC)/xlacon.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zgssv.c:	$(SRC)/xgssv.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zgssvx.c:	$(SRC)/xgssvx.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zgstrf.c:	$(SRC)/xgstrf.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zgstrs.c:	$(SRC)/xgstrs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zgscon.c:	$(SRC)/xgscon.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zmemory.c:	$(SRC)/xmemory.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zgsequ.c:	$(SRC)/xgsequ.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zlaqgs.c:	$(SRC)/xlaqgs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zgsrfs.c:	$(SRC)/xgsrfs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zlangs.c:	$(SRC)/xlangs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zcolumn_bmod.c:	$(SRC)/xcolumn_bmod.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zcolumn_dfs.c:	$(SRC)/xcolumn_dfs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zpanel_bmod.c:	$(SRC)/xpanel_bmod.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zpanel_dfs.c:	$(SRC)/xpanel_dfs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zpivotL.c:	$(SRC)/xpivotL.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zpivotgrowth.c:	$(SRC)/xpivotgrowth.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zpruneL.c:	$(SRC)/xpruneL.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zreadhb.c:	$(SRC)/xreadhb.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zreadrb.c:	$(SRC)/xreadrb.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zreadtriple.c: $(SRC)/xreadtriple.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zsnode_bmod.c:	$(SRC)/xsnode_bmod.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zsnode_dfs.c:	$(SRC)/xsnode_dfs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zsp_blas2.c:	$(SRC)/xsp_blas2.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zsp_blas3.c:	$(SRC)/xsp_blas3.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zutil.c:	$(SRC)/xutil.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/slu_zdefs.h:	$(SRC)/slu_xdefs.h.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zcopy_to_ucol.c:	$(SRC)/xcopy_to_ucol.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/dcomplex.c: $(SRC)/xcomplex.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/slu_dcomplex.h: $(SRC)/slu_xcomplex.h.base
	extract -b $? -o $@ precision=dcomplex


$(TGTTST)/sp_zconvert.c:	$(TST)/sp_xconvert.base
	extract -b $? -o $@ precision=dcomplex

$(TGTTST)/zgst01.c:	$(TST)/xgst01.base
	extract -b $? -o $@ precision=dcomplex

$(TGTTST)/zgst02.c:	$(TST)/xgst02.base
	extract -b $? -o $@ precision=dcomplex

$(TGTTST)/zgst04.c:	$(TST)/xgst04.base
	extract -b $? -o $@ precision=dcomplex

$(TGTTST)/zgst07.c:	$(TST)/xgst07.base
	extract -b $? -o $@ precision=dcomplex

$(TGTTST)/zdrive.c:	$(TST)/xdrive.base
	extract -b $? -o $@ precision=dcomplex

$(TGTEXM)/zlinsol.c:	$(EXM)/xlinsol.base
	extract -b $? -o $@ precision=dcomplex

$(TGTEXM)/zlinsol1.c:	$(EXM)/xlinsol1.base
	extract -b $? -o $@ precision=dcomplex

$(TGTEXM)/zlinsolx.c:	$(EXM)/xlinsolx.base
	extract -b $? -o $@ precision=dcomplex

$(TGTEXM)/zlinsolx1.c:	$(EXM)/xlinsolx1.base
	extract -b $? -o $@ precision=dcomplex

$(TGTEXM)/zlinsolx2.c:	$(EXM)/xlinsolx2.base
	extract -b $? -o $@ precision=dcomplex

$(TGTEXM)/zlinsolx3.c:	$(EXM)/xlinsolx3.base
	extract -b $? -o $@ precision=dcomplex

$(TGTEXM)/zitersol.c:	$(EXM)/xitersol.base
	extract -b $? -o $@ precision=dcomplex

$(TGTEXM)/zitersol1.c:	$(EXM)/xitersol1.base
	extract -b $? -o $@ precision=dcomplex

$(TGTEXM)/zfgmr.c:	$(EXM)/xfgmr.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zmyblas2.c:	$(SRC)/xmyblas2.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zgsisx.c:	$(SRC)/xgsisx.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zgsitrf.c:	$(SRC)/xgsitrf.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zldperm.c:	$(SRC)/xldperm.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/zdiagonal.c:	$(SRC)/xdiagonal.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/ilu_zdrop_row.c:	$(SRC)/ilu_xdrop_row.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/ilu_zsnode_dfs.c:	$(SRC)/ilu_xsnode_dfs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/ilu_zcolumn_dfs.c:	$(SRC)/ilu_xcolumn_dfs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/ilu_zpanel_dfs.c:	$(SRC)/ilu_xpanel_dfs.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/ilu_zcopy_to_ucol.c:	$(SRC)/ilu_xcopy_to_ucol.base
	extract -b $? -o $@ precision=dcomplex

$(TGTSRC)/ilu_zpivotL.c:	$(SRC)/ilu_xpivotL.base
	extract -b $? -o $@ precision=dcomplex

$(TGTFOR)/c_fortran_zgssv.c: $(FOR)/c_fortran_xgssv.base
	extract -b $? -o $@ precision=dcomplex
