.class final Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectoryFilter"
.end annotation


# instance fields
.field private mLimit:I

.field private final mParams:Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

.field final synthetic this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/ex/chips/BaseRecipientAdapter;Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V
    .locals 0
    .param p2, "params"    # Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .prologue
    .line 323
    iput-object p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 324
    iput-object p2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 325
    return-void
.end method


# virtual methods
.method public declared-synchronized getLimit()I
    .locals 1

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 341
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 342
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 343
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v2, "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    const/4 v0, 0x0

    .line 353
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-virtual {p0}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->getLimit()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v6, v5, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$100(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1

    .line 356
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    new-instance v3, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    invoke-direct {v3, v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_0
    throw v3

    .line 361
    :cond_1
    if-eqz v0, :cond_2

    .line 362
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 366
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 367
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 376
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    :cond_3
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/4 v7, 0x0

    .line 385
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1200(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->removeDelayedLoadMessage()V

    .line 390
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$600(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 393
    iget-object v6, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .line 396
    .local v6, "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    .line 397
    .local v1, "tempEntry":Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v2, v2, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .line 398
    invoke-static {v3}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$700(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v4}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$800(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v5}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$900(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;

    move-result-object v5

    .line 397
    invoke-static/range {v0 .. v5}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$200(Lcn/nubia/ex/chips/BaseRecipientAdapter;Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    move v2, v7

    goto :goto_1

    .line 403
    .end local v1    # "tempEntry":Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .end local v6    # "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    :cond_1
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1310(Lcn/nubia/ex/chips/BaseRecipientAdapter;)I

    .line 404
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1300(Lcn/nubia/ex/chips/BaseRecipientAdapter;)I

    move-result v0

    if-lez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1200(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 414
    :cond_2
    iget-object v0, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    iget-object v2, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    iget-object v3, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    .line 415
    invoke-static {v3}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$700(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v4}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$800(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcn/nubia/ex/chips/BaseRecipientAdapter;

    invoke-static {v5}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$900(Lcn/nubia/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;

    move-result-object v5

    .line 414
    invoke-static {v2, v7, v3, v4, v5}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$300(Lcn/nubia/ex/chips/BaseRecipientAdapter;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->access$1000(Lcn/nubia/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V

    .line 416
    return-void
.end method

.method public declared-synchronized setLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcn/nubia/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
