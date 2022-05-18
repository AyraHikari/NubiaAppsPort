.class public Lcn/nubia/calendar/AsyncQueryService;
.super Landroid/os/Handler;
.source "AsyncQueryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/AsyncQueryService$Operation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field static final localLOGV:Z

.field private static mUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/nubia/calendar/AsyncQueryService;->mUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object p0, p0, Lcn/nubia/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object p1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method


# virtual methods
.method public final cancelOperation(I)I
    .locals 1
    .param p1, "token"    # I

    .prologue
    .line 147
    invoke-static {p1}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->cancelOperation(I)I

    move-result v0

    return v0
.end method

.method public final getLastCancelableOperation()Lcn/nubia/calendar/AsyncQueryService$Operation;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->getLastCancelableOperation()Lcn/nubia/calendar/AsyncQueryService$Operation;

    move-result-object v0

    return-object v0
.end method

.method public final getNextToken()I
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcn/nubia/calendar/AsyncQueryService;->mUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 444
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 445
    .local v0, "info":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    .line 450
    .local v2, "token":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 458
    .local v1, "op":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 460
    :pswitch_0
    iget-object v4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {p0, v2, v4, v3}, Lcn/nubia/calendar/AsyncQueryService;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    .line 464
    :pswitch_1
    iget-object v4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v2, v4, v3}, Lcn/nubia/calendar/AsyncQueryService;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 468
    :pswitch_2
    iget-object v4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcn/nubia/calendar/AsyncQueryService;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 472
    :pswitch_3
    iget-object v4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcn/nubia/calendar/AsyncQueryService;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 476
    :pswitch_4
    iget-object v4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v3, [Landroid/content/ContentProviderResult;

    check-cast v3, [Landroid/content/ContentProviderResult;

    invoke-virtual {p0, v2, v4, v3}, Lcn/nubia/calendar/AsyncQueryService;->onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "results"    # [Landroid/content/ContentProviderResult;

    .prologue
    .line 440
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 418
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 384
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 367
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 401
    return-void
.end method

.method protected setTestHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 484
    iput-object p1, p0, Lcn/nubia/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    .line 485
    return-void
.end method

.method public startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "authority"    # Ljava/lang/String;
    .param p5, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p4, "cpo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 339
    .local v0, "info":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x5

    iput v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 340
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 341
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 343
    iput p1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 344
    iput-object p2, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 345
    iput-object p3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->authority:Ljava/lang/String;

    .line 346
    iput-object p4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cpo:Ljava/util/ArrayList;

    .line 347
    iput-wide p5, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 349
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 350
    return-void
.end method

.method public startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "delayMillis"    # J

    .prologue
    .line 303
    new-instance v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 304
    .local v0, "info":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x4

    iput v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 305
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 306
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 308
    iput p1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 309
    iput-object p2, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 310
    iput-object p3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 311
    iput-object p4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    .line 312
    iput-object p5, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    .line 313
    iput-wide p6, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 315
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 316
    return-void
.end method

.method public startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "initialValues"    # Landroid/content/ContentValues;
    .param p5, "delayMillis"    # J

    .prologue
    .line 218
    new-instance v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 219
    .local v0, "info":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x2

    iput v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 220
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 221
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 223
    iput p1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 224
    iput-object p2, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 225
    iput-object p3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 226
    iput-object p4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    .line 227
    iput-wide p5, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 229
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 230
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 183
    .local v0, "info":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x1

    iput v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 184
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 186
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 187
    iput p1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 188
    iput-object p2, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 189
    iput-object p3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 190
    iput-object p4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->projection:[Ljava/lang/String;

    .line 191
    iput-object p5, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    .line 192
    iput-object p6, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    .line 193
    iput-object p7, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->orderBy:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 196
    return-void
.end method

.method public startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "delayMillis"    # J

    .prologue
    .line 261
    new-instance v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 262
    .local v0, "info":Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;
    const/4 v1, 0x3

    iput v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 263
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 264
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 266
    iput p1, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 267
    iput-object p2, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 268
    iput-object p3, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 269
    iput-object p4, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    .line 270
    iput-object p5, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    .line 271
    iput-object p6, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    .line 272
    iput-wide p7, v0, Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 274
    iget-object v1, p0, Lcn/nubia/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcn/nubia/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 275
    return-void
.end method
