.class public Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlarmRepeatSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RepeatSettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public repeatCheckedResult:[Z

.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 339
    iput-object p2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->mData:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->repeatCheckedResult:[Z

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "i":I
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 343
    .local v1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->repeatCheckedResult:[Z

    const-string v2, "checked"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v4, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    .line 345
    goto :goto_0

    .line 346
    .end local v1    # "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->setRepeatCheckedResult(II)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->setSelectRepeate(I)V

    return-void
.end method

.method private setRepeatCheckedResult(II)V
    .locals 3
    .param p1, "checkedID"    # I
    .param p2, "length"    # I

    .prologue
    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 464
    if-ne v0, p1, :cond_0

    .line 465
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->repeatCheckedResult:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 463
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->repeatCheckedResult:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 470
    :cond_1
    return-void
.end method

.method private setSelectRepeate(I)V
    .locals 9
    .param p1, "checkedID"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 473
    const-string v1, "AlarmRepeatSettingView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkedID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    packed-switch p1, :pswitch_data_0

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 476
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_1

    .line 477
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v1

    aput-boolean v5, v1, v0

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$902(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Z)Z

    .line 480
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$100(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    goto :goto_0

    .line 484
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v6, :cond_2

    .line 485
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v1

    aput-boolean v4, v1, v0

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 487
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v1

    aput-boolean v5, v1, v6

    .line 488
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v1

    aput-boolean v5, v1, v8

    .line 489
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$902(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Z)Z

    .line 490
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$100(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    goto :goto_0

    .line 494
    .end local v0    # "i":I
    :pswitch_2
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 495
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v7, :cond_3

    .line 496
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v1

    aput-boolean v4, v1, v0

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 498
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$902(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Z)Z

    .line 499
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$100(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    goto :goto_0

    .line 501
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v6, :cond_5

    .line 502
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v1

    aput-boolean v4, v1, v0

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 504
    :cond_5
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v1

    aput-boolean v5, v1, v6

    .line 505
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v1

    aput-boolean v5, v1, v8

    .line 506
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1, v5}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$902(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Z)Z

    .line 507
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$100(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    goto/16 :goto_0

    .line 511
    .end local v0    # "i":I
    :pswitch_3
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 512
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$902(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Z)Z

    .line 513
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$1000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$1000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;->beginStartActivity()V

    goto/16 :goto_0

    .line 517
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v7, :cond_7

    .line 518
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v1

    aput-boolean v4, v1, v0

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 520
    :cond_7
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$902(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Z)Z

    .line 521
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$100(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    goto/16 :goto_0

    .line 525
    .end local v0    # "i":I
    :pswitch_4
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$902(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Z)Z

    .line 526
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$1000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$1000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;->beginStartActivity()V

    goto/16 :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$1100(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 355
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f120157

    const v7, 0x7f120156

    const v10, 0x7f0f0020

    const/16 v9, 0x8

    const/4 v8, 0x2

    .line 360
    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 361
    .local v1, "context":Landroid/content/Context;
    const-string v5, "layout_inflater"

    .line 362
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 363
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 364
    .local v4, "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    move v0, p1

    .line 365
    .local v0, "checkedID":I
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v5

    if-nez v5, :cond_1

    .line 366
    if-ne p1, v8, :cond_1

    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v5}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$400(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 367
    if-nez p2, :cond_0

    .line 368
    new-instance v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;

    .end local v4    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;)V

    .line 369
    .restart local v4    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    const v5, 0x7f040080

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 370
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mRepeatOptions:Landroid/widget/TextView;

    .line 371
    const v5, 0x7f120171

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mDataWarning:Landroid/widget/TextView;

    .line 372
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    .line 373
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v2, p2

    .line 459
    .end local p2    # "convertView":Landroid/view/View;
    .local v2, "convertView":Landroid/view/View;
    :goto_1
    return-object v2

    .line 375
    .end local v2    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    check-cast v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;

    .restart local v4    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    goto :goto_0

    .line 381
    :cond_1
    if-nez p2, :cond_3

    .line 382
    new-instance v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;

    .end local v4    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;)V

    .line 383
    .restart local v4    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    const v5, 0x7f04007f

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 384
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mRepeatOptions:Landroid/widget/TextView;

    .line 385
    const v5, 0x7f120171

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mDataWarning:Landroid/widget/TextView;

    .line 386
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    .line 387
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 392
    :goto_2
    iget-object v6, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mRepeatOptions:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v7, "entry"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 394
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mDataWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    :goto_3
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    if-eqz v5, :cond_2

    .line 413
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->repeatCheckedResult:[Z

    aget-boolean v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 414
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    new-instance v6, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$1;

    invoke-direct {v6, p0, v1, v0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$1;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;Landroid/content/Context;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    :cond_2
    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->repeatCheckedResult:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_7

    .line 434
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mRepeatOptions:Landroid/widget/TextView;

    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v6}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    :goto_4
    new-instance v5, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;

    invoke-direct {v5, p0, v1, v0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;Landroid/content/Context;I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, p2

    .line 459
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v2    # "convertView":Landroid/view/View;
    goto/16 :goto_1

    .line 389
    .end local v2    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    check-cast v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;

    .restart local v4    # "viewHolder":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;
    goto :goto_2

    .line 396
    :cond_4
    if-ne p1, v8, :cond_6

    .line 397
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mDataWarning:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    sget-object v5, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 399
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mDataWarning:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0067

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_5
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mDataWarning:Landroid/widget/TextView;

    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v6}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 402
    :cond_5
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mDataWarning:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0066

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 408
    :cond_6
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mDataWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 437
    :cond_7
    iget-object v5, v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$ViewHolder;->mRepeatOptions:Landroid/widget/TextView;

    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v6}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 350
    const/4 v0, 0x1

    return v0
.end method
