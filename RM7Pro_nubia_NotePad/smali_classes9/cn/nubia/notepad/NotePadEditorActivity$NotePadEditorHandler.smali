.class Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;
.super Landroid/os/Handler;
.source "NotePadEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NotePadEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotePadEditorHandler"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/NotePadEditorActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 1
    .param p1, "activity"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 1785
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1786
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1787
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/NotePadEditorActivity;

    .line 1792
    .local v2, "activity":Lcn/nubia/notepad/NotePadEditorActivity;
    if-nez v2, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return-void

    .line 1795
    :cond_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 1910
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1797
    :pswitch_1
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1500(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1798
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1799
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1702(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .line 1800
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    if-nez v14, :cond_3

    .line 1801
    invoke-virtual {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->finish()V

    goto :goto_0

    .line 1804
    :cond_3
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    iget-object v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1802(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 1805
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    iget-wide v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    invoke-static {v2, v14, v15}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1902(Lcn/nubia/notepad/NotePadEditorActivity;J)J

    .line 1806
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    iget-object v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->resource:Ljava/lang/String;

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2002(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1807
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    iget v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2102(Lcn/nubia/notepad/NotePadEditorActivity;I)I

    .line 1808
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    iget-boolean v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2202(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z

    .line 1809
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    iget-wide v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    invoke-static {v2, v14, v15}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2302(Lcn/nubia/notepad/NotePadEditorActivity;J)J

    .line 1810
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2200(Lcn/nubia/notepad/NotePadEditorActivity;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 1811
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2300(Lcn/nubia/notepad/NotePadEditorActivity;)J

    move-result-wide v14

    invoke-static {v2, v14, v15}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2400(Lcn/nubia/notepad/NotePadEditorActivity;J)V

    .line 1813
    :cond_4
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    iget-boolean v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2502(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z

    .line 1814
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    iget v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2602(Lcn/nubia/notepad/NotePadEditorActivity;I)I

    .line 1815
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2600(Lcn/nubia/notepad/NotePadEditorActivity;)I

    move-result v14

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2702(Lcn/nubia/notepad/NotePadEditorActivity;I)I

    .line 1816
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$100(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1819
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$600(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 1820
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1800(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-ge v5, v14, :cond_5

    .line 1822
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1800(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .line 1821
    invoke-static {v2, v14, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2800(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;I)V

    .line 1820
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1824
    :cond_5
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->updateTile(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V

    .line 1825
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNoteModifyDate(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V

    .line 1826
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->updateRemindMenu(Z)V

    .line 1828
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2900(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 1829
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3000(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 1831
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3100(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 1834
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3200(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 1836
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    iget-object v14, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3300(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1839
    .end local v5    # "i":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "picResourceFileName"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1841
    .local v10, "picResourceFileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "picResourceFilePath"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1843
    .local v11, "picResourceFilePath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "index"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1844
    .local v7, "index":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "bitmapHeight"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1845
    .local v3, "bitmapHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "bitmapWidth"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1846
    .local v4, "bitmapWidth":I
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3400(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 1847
    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1848
    .local v13, "view":Landroid/view/View;
    if-eqz v13, :cond_0

    .line 1851
    const v14, 0x7f0f0081

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1853
    .local v6, "imageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz v6, :cond_0

    .line 1857
    invoke-static {v2, v6, v11, v3, v4}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3500(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/widget/ImageView;Ljava/lang/String;II)V

    .line 1859
    sget-object v14, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v14, v11}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1860
    .local v12, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v14

    iget-object v15, v2, Lcn/nubia/notepad/NotePadEditorActivity;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v14, v12, v6, v15}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 1862
    invoke-static {v2, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3600(Lcn/nubia/notepad/NotePadEditorActivity;I)V

    .line 1863
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1864
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "imageView"

    invoke-virtual {v8, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1866
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3710(Lcn/nubia/notepad/NotePadEditorActivity;)I

    .line 1867
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3700(Lcn/nubia/notepad/NotePadEditorActivity;)I

    move-result v14

    if-nez v14, :cond_2

    .line 1868
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v14, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    .line 1870
    .local v9, "message":Landroid/os/Message;
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v14

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v9, v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1874
    .end local v3    # "bitmapHeight":I
    .end local v4    # "bitmapWidth":I
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "index":I
    .end local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "message":Landroid/os/Message;
    .end local v10    # "picResourceFileName":Ljava/lang/String;
    .end local v11    # "picResourceFilePath":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    .end local v13    # "view":Landroid/view/View;
    :pswitch_3
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3800(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 1875
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3800(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 1877
    :cond_6
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3100(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 1878
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3000(Lcn/nubia/notepad/NotePadEditorActivity;)V

    goto/16 :goto_1

    .line 1881
    :pswitch_4
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3900(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-eqz v14, :cond_0

    .line 1884
    iget-object v15, v2, Lcn/nubia/notepad/NotePadEditorActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1885
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3900(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Runnable;

    invoke-interface {v15, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1888
    :pswitch_5
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4000(Lcn/nubia/notepad/NotePadEditorActivity;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1889
    invoke-virtual {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->showKeyBorad()V

    goto/16 :goto_1

    .line 1893
    :pswitch_6
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4100(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1894
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4100(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v14

    invoke-virtual {v14}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1895
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4100(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v14

    invoke-virtual {v14}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    .line 1897
    :cond_7
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4200(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    move-result-object v14

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2600(Lcn/nubia/notepad/NotePadEditorActivity;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->setCurLabelId(I)V

    .line 1898
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4100(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v14

    invoke-virtual {v14}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->show()V

    .line 1899
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4200(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1903
    :pswitch_7
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v14

    const v15, 0x7f0a005b

    invoke-virtual {v2, v15}, Lcn/nubia/notepad/NotePadEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 1904
    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$900(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v15

    iget-object v15, v15, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1905
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-static {v2, v14}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4300(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
