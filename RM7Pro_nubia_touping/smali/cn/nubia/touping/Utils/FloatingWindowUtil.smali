.class public Lcn/nubia/touping/Utils/FloatingWindowUtil;
.super Ljava/lang/Object;
.source "FloatingWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x7d0

.field private static final GETTING_WORSE_LIMIT:I = 0x1

.field private static final MSG_REFRESH:I = 0x11

.field private static final STATUS_LIST_CAPACITY:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "[FloatingWindowUtil]"

.field private static instance:Lcn/nubia/touping/Utils/FloatingWindowUtil;


# instance fields
.field private isShowing:Z

.field private mAdjustQualityShown:Z

.field private mAdjustView:Landroid/view/View;

.field private mAutoQuality:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastStatus:I

.field private mStatusChangeCount:I

.field private mStatusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusView:Landroid/view/View;

.field private mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Landroid/widget/TextView;

.field private mTips:Landroid/widget/TextView;

.field private mTipsDismissTask:Ljava/lang/Runnable;

.field private mTipsShown:Z

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->isShowing:Z

    .line 40
    iput-boolean v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTipsShown:Z

    .line 41
    iput-boolean v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustQualityShown:Z

    .line 42
    iput-boolean v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAutoQuality:Z

    .line 43
    const v0, 0x3385e

    iput v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mLastStatus:I

    .line 44
    iput v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusChangeCount:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTempList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcn/nubia/touping/Utils/FloatingWindowUtil$1;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil$1;-><init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcn/nubia/touping/Utils/FloatingWindowUtil$2;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil$2;-><init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTipsDismissTask:Ljava/lang/Runnable;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/Utils/FloatingWindowUtil;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/FloatingWindowUtil;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/Utils/FloatingWindowUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/Utils/FloatingWindowUtil;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/Utils/FloatingWindowUtil;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->hideAdjustQualityDialog()V

    return-void
.end method

.method private checkStatusChange(I)V
    .locals 11
    .param p1, "msg"    # I

    .prologue
    const v4, 0x3385e

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x33860

    .line 155
    iget v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mLastStatus:I

    if-ne v3, v4, :cond_0

    if-eq p1, v4, :cond_0

    .line 157
    iget v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusChangeCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusChangeCount:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 158
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTips:Landroid/widget/TextView;

    const v4, 0x7f080084

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTips:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 161
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTipsDismissTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    :cond_0
    iget v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mLastStatus:I

    if-eq p1, v3, :cond_7

    .line 166
    const-string v3, "[FloatingWindowUtil]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==========before========:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 168
    const-string v3, "[FloatingWindowUtil]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v2, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, p0, v4, v5, p1}, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;-><init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;JI)V

    .line 172
    .local v2, "newStatus":Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTempList:Ljava/util/ArrayList;

    .line 173
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 174
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTempList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 175
    iget-wide v4, v2, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;->timeTick:J

    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;

    iget-wide v6, v3, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;->timeTick:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 179
    :cond_2
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTempList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    .line 180
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v3, "[FloatingWindowUtil]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==========after========:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 183
    const-string v3, "[FloatingWindowUtil]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 173
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 186
    :cond_4
    iget-boolean v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAutoQuality:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustQualityShown:Z

    if-nez v3, :cond_7

    if-lt p1, v8, :cond_7

    iget v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mLastStatus:I

    if-ge v3, v8, :cond_7

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "gettingWorse":I
    const/4 v1, 0x1

    :goto_3
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 192
    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;

    iget v3, v3, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;->quality:I

    if-lt v3, v8, :cond_5

    iget-object v3, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    .line 193
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;

    iget v3, v3, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;->quality:I

    if-ge v3, v8, :cond_5

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 190
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 197
    :cond_6
    const-string v3, "[FloatingWindowUtil]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStatusChange() gettingWorseCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-lt v0, v10, :cond_7

    .line 199
    iput-boolean v10, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustQualityShown:Z

    .line 203
    invoke-virtual {p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->showAdjustQualityDialog()V

    .line 207
    .end local v0    # "gettingWorse":I
    .end local v1    # "i":I
    .end local v2    # "newStatus":Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;
    :cond_7
    iput p1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mLastStatus:I

    .line 208
    return-void
.end method

.method private createView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 274
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayText(I)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 225
    const v1, 0x3385e

    if-ne p1, v1, :cond_0

    .line 226
    const v0, 0x7f080017

    .line 234
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "resId":I
    :goto_1
    return-object v1

    .line 227
    :cond_0
    const v1, 0x3385f

    if-ne p1, v1, :cond_1

    .line 228
    const v0, 0x7f080018

    .restart local v0    # "resId":I
    goto :goto_0

    .line 229
    .end local v0    # "resId":I
    :cond_1
    const v1, 0x33860

    if-ne p1, v1, :cond_2

    .line 230
    const-string v1, "low"

    goto :goto_1

    .line 232
    :cond_2
    const v0, 0x7f080019

    .restart local v0    # "resId":I
    goto :goto_0
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 212
    const v1, 0x3385e

    if-ne p1, v1, :cond_0

    .line 213
    const v0, 0x7f0200b1

    .line 220
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 214
    .end local v0    # "resId":I
    :cond_0
    const v1, 0x3385f

    if-eq p1, v1, :cond_1

    const v1, 0x33860

    if-ne p1, v1, :cond_2

    .line 216
    :cond_1
    const v0, 0x7f0200b3

    .restart local v0    # "resId":I
    goto :goto_0

    .line 218
    .end local v0    # "resId":I
    :cond_2
    const v0, 0x7f0200b2

    .restart local v0    # "resId":I
    goto :goto_0
.end method

.method public static getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->instance:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-direct {v0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;-><init>()V

    sput-object v0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->instance:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    .line 85
    :cond_0
    sget-object v0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->instance:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    return-object v0
.end method

.method private hideAdjustQualityDialog()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 330
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    .line 331
    return-void
.end method

.method private makeAdjustDialogParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    .line 256
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 257
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 258
    const/16 v2, 0x7f6

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 262
    :goto_0
    const/high16 v2, 0x4000000

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 263
    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 264
    .local v1, "orientation":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    .line 265
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    :goto_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 267
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 268
    const/16 v2, 0x51

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 269
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 270
    return-object v0

    .line 260
    .end local v1    # "orientation":I
    :cond_0
    const/16 v2, 0x7d2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 265
    .restart local v1    # "orientation":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private makeLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 238
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 239
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 240
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 244
    :goto_0
    const v1, 0x4000038

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 248
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 250
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 251
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 252
    return-object v0

    .line 242
    :cond_0
    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method


# virtual methods
.method public checkFloatPermission(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 350
    const-string v2, "appops"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 351
    .local v1, "manager":Landroid/app/AppOpsManager;
    const-string v2, "android:system_alert_window"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 352
    .local v0, "checkResult":I
    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideDelayTime()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "[FloatingWindowUtil]"

    const-string v1, "hideDelayTime"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->isShowing:Z

    .line 125
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    .line 78
    iput-object p1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public onChangeQuality(I)V
    .locals 5
    .param p1, "quality"    # I

    .prologue
    .line 342
    const-string v0, "[FloatingWindowUtil]"

    const-string v1, "change to non auto"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAutoQuality:Z

    .line 344
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mLastStatus:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;-><init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method public postUpdateStatus(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 148
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 357
    iput-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mHandler:Landroid/os/Handler;

    .line 358
    iput-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    .line 359
    iput-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    .line 360
    iput-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    .line 361
    iput-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mText:Landroid/widget/TextView;

    .line 362
    iput-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTips:Landroid/widget/TextView;

    .line 363
    sput-object v1, Lcn/nubia/touping/Utils/FloatingWindowUtil;->instance:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    .line 364
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 279
    const-string v2, "[FloatingWindowUtil]"

    const-string v3, "reset()"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iput v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusChangeCount:I

    .line 281
    const v2, 0x3385e

    iput v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mLastStatus:I

    .line 282
    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 283
    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusList:Ljava/util/ArrayList;

    new-instance v3, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mLastStatus:I

    invoke-direct {v3, p0, v4, v5, v6}, Lcn/nubia/touping/Utils/FloatingWindowUtil$Status;-><init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    const-string v3, "SCREEN_PROJECTION_QUALITY_20210706"

    invoke-static {v2, v3, v1}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 286
    .local v0, "quality":I
    iput-boolean v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustQualityShown:Z

    .line 287
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAutoQuality:Z

    .line 288
    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mText:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 292
    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    const v2, 0x7f0e0132

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mText:Landroid/widget/TextView;

    .line 293
    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 297
    :cond_3
    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mText:Landroid/widget/TextView;

    iget v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mLastStatus:I

    invoke-direct {p0, v2}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showAdjustQualityDialog()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f04001b

    invoke-direct {p0, v0, v1}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/Utils/FloatingWindowUtil$3;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil$3;-><init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/touping/Utils/FloatingWindowUtil$4;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil$4;-><init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mAdjustView:Landroid/view/View;

    invoke-direct {p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->makeAdjustDialogParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    return-void
.end method

.method public showDelayTime()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 89
    const-string v0, "[FloatingWindowUtil]"

    const-string v1, "showDelayTime"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->makeLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 93
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f040061

    invoke-direct {p0, v0, v1}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    const v1, 0x7f0e0133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTips:Landroid/widget/TextView;

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTipsShown:Z

    if-nez v0, :cond_3

    .line 99
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    const-string v1, "FLOATING_WINDOW_FIRST_SHOW"

    invoke-static {v0, v1, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTips:Landroid/widget/TextView;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTips:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTipsDismissTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mContext:Landroid/content/Context;

    const-string v1, "FLOATING_WINDOW_FIRST_SHOW"

    invoke-static {v0, v1, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 106
    :cond_2
    iput-boolean v4, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mTipsShown:Z

    .line 108
    :cond_3
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iput-boolean v4, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->isShowing:Z

    .line 113
    :cond_4
    return-void
.end method

.method public updateStatus(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkStatusChange(I)V

    .line 129
    iget-boolean v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->isShowing:Z

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mText:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    const v1, 0x7f0e0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mText:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 141
    :cond_2
    const-string v0, "[FloatingWindowUtil]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatus() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mStatusView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
