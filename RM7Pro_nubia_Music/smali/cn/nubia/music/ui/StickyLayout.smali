.class public Lcn/nubia/music/ui/StickyLayout;
.super Landroid/widget/LinearLayout;
.source "StickyLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/StickyLayout$OnGiveUpTouchEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final STATUS_COLLAPSED:I = 0x2

.field public static final STATUS_EXPANDED:I = 0x1


# instance fields
.field private mContent:Landroid/view/View;

.field private mDirectionUp:Z

.field private mDisallowInterceptTouchEventOnHeader:Z

.field private mGiveUpTouchEventListener:Lcn/nubia/music/ui/StickyLayout$OnGiveUpTouchEventListener;

.field private mHeader:Landroid/view/View;

.field private mHeaderHeight:I

.field private mInitDataSucceed:Z

.field private mIsSticky:Z

.field private mLastXIntercept:I

.field private mLastY:I

.field private mLastYIntercept:I

.field private mOriginalHeaderHeight:I

.field private mStatus:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput v1, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    .line 66
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastY:I

    .line 67
    iput-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mDirectionUp:Z

    .line 70
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastXIntercept:I

    .line 71
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastYIntercept:I

    .line 76
    iput-boolean v1, p0, Lcn/nubia/music/ui/StickyLayout;->mIsSticky:Z

    .line 77
    iput-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mInitDataSucceed:Z

    .line 78
    iput-boolean v1, p0, Lcn/nubia/music/ui/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput v1, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    .line 66
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastY:I

    .line 67
    iput-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mDirectionUp:Z

    .line 70
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastXIntercept:I

    .line 71
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastYIntercept:I

    .line 76
    iput-boolean v1, p0, Lcn/nubia/music/ui/StickyLayout;->mIsSticky:Z

    .line 77
    iput-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mInitDataSucceed:Z

    .line 78
    iput-boolean v1, p0, Lcn/nubia/music/ui/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v1, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    .line 66
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastY:I

    .line 67
    iput-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mDirectionUp:Z

    .line 70
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastXIntercept:I

    .line 71
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastYIntercept:I

    .line 76
    iput-boolean v1, p0, Lcn/nubia/music/ui/StickyLayout;->mIsSticky:Z

    .line 77
    iput-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mInitDataSucceed:Z

    .line 78
    iput-boolean v1, p0, Lcn/nubia/music/ui/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    .line 91
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lcn/nubia/music/ui/StickyLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "sticky_header"

    const-string v2, "id"

    .line 103
    invoke-virtual {p0}, Lcn/nubia/music/ui/StickyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 104
    invoke-virtual {p0}, Lcn/nubia/music/ui/StickyLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "sticky_content"

    const-string v3, "id"

    .line 105
    invoke-virtual {p0}, Lcn/nubia/music/ui/StickyLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 106
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/StickyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeader:Landroid/view/View;

    .line 108
    invoke-virtual {p0, v1}, Lcn/nubia/music/ui/StickyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mContent:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mOriginalHeaderHeight:I

    .line 110
    iget v0, p0, Lcn/nubia/music/ui/StickyLayout;->mOriginalHeaderHeight:I

    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    .line 111
    invoke-virtual {p0}, Lcn/nubia/music/ui/StickyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mTouchSlop:I

    .line 112
    iget v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    if-lez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mInitDataSucceed:Z

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTouchSlop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/StickyLayout;->mTouchSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHeaderHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 122
    return-void

    .line 119
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Did your view with id \"sticky_header\" or \"sticky_content\" exists?"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    return v0
.end method

.method public getStickyLayoutStatus()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    move v0, v2

    .line 185
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intercepted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 187
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mIsSticky:Z

    if-eqz v0, :cond_4

    :goto_1
    return v1

    .line 136
    :pswitch_0
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastXIntercept:I

    .line 137
    iput v3, p0, Lcn/nubia/music/ui/StickyLayout;->mLastYIntercept:I

    .line 139
    iput v3, p0, Lcn/nubia/music/ui/StickyLayout;->mLastY:I

    move v0, v2

    .line 141
    goto :goto_0

    .line 144
    :pswitch_1
    iget v4, p0, Lcn/nubia/music/ui/StickyLayout;->mLastXIntercept:I

    sub-int/2addr v0, v4

    .line 145
    iget v4, p0, Lcn/nubia/music/ui/StickyLayout;->mLastYIntercept:I

    sub-int v4, v3, v4

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptTouchEvent() ACTION_MOVE mStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptTouchEvent() ACTION_MOVE mIsSticky="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcn/nubia/music/ui/StickyLayout;->mIsSticky:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptTouchEvent() ACTION_MOVE mTouchSlop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/music/ui/StickyLayout;->mTouchSlop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptTouchEvent() ACTION_MOVE deltaX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptTouchEvent() ACTION_MOVE deltaY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptTouchEvent() ACTION_MOVE mDisallowInterceptTouchEventOnHeader="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcn/nubia/music/ui/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptTouchEvent() ACTION_MOVE getHeaderHeight()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 155
    invoke-virtual {p0}, Lcn/nubia/music/ui/StickyLayout;->getHeaderHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {v5}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 156
    iget-boolean v5, p0, Lcn/nubia/music/ui/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcn/nubia/music/ui/StickyLayout;->getHeaderHeight()I

    move-result v5

    if-gt v3, v5, :cond_1

    .line 157
    const-string v0, "onInterceptTouchEvent() 11"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v2

    .line 158
    goto/16 :goto_0

    .line 159
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v3, v0, :cond_2

    .line 160
    const-string v0, "onInterceptTouchEvent() 22"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v2

    .line 161
    goto/16 :goto_0

    .line 162
    :cond_2
    iget v0, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcn/nubia/music/ui/StickyLayout;->mTouchSlop:I

    neg-int v0, v0

    if-gt v4, v0, :cond_3

    .line 163
    const-string v0, "onInterceptTouchEvent() 33"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 164
    goto/16 :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mGiveUpTouchEventListener:Lcn/nubia/music/ui/StickyLayout$OnGiveUpTouchEventListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mGiveUpTouchEventListener:Lcn/nubia/music/ui/StickyLayout$OnGiveUpTouchEventListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/ui/StickyLayout$OnGiveUpTouchEventListener;->giveUpTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInterceptTouchEvent() bGiveUp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 168
    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/music/ui/StickyLayout;->mTouchSlop:I

    if-lt v4, v0, :cond_0

    .line 169
    const-string v0, "onInterceptTouchEvent() 44"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 170
    goto/16 :goto_0

    .line 177
    :pswitch_2
    iput v2, p0, Lcn/nubia/music/ui/StickyLayout;->mLastYIntercept:I

    iput v2, p0, Lcn/nubia/music/ui/StickyLayout;->mLastXIntercept:I

    move v0, v2

    .line 178
    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 187
    goto/16 :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 192
    iget-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mIsSticky:Z

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return v8

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 241
    :goto_1
    :pswitch_0
    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mLastY:I

    goto :goto_0

    .line 203
    :pswitch_1
    iget v1, p0, Lcn/nubia/music/ui/StickyLayout;->mLastY:I

    sub-int v1, v0, v1

    .line 204
    if-lez v1, :cond_1

    .line 205
    iput-boolean v9, p0, Lcn/nubia/music/ui/StickyLayout;->mDirectionUp:Z

    .line 210
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHeaderHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  deltaY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mlastY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/music/ui/StickyLayout;->mLastY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 213
    iget v2, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    .line 214
    iget v1, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    invoke-virtual {p0, v1}, Lcn/nubia/music/ui/StickyLayout;->setHeaderHeight(I)V

    goto :goto_1

    .line 207
    :cond_1
    iput-boolean v8, p0, Lcn/nubia/music/ui/StickyLayout;->mDirectionUp:Z

    goto :goto_2

    .line 219
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP mDirectionUp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/music/ui/StickyLayout;->mDirectionUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 221
    iget v1, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    int-to-double v2, v1

    iget v1, p0, Lcn/nubia/music/ui/StickyLayout;->mOriginalHeaderHeight:I

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    .line 225
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    .line 226
    iget v1, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    invoke-virtual {p0, v1, v9, v10, v11}, Lcn/nubia/music/ui/StickyLayout;->smoothSetHeaderHeight(IIJ)V

    goto :goto_1

    .line 228
    :cond_2
    iget v1, p0, Lcn/nubia/music/ui/StickyLayout;->mOriginalHeaderHeight:I

    .line 229
    iput v8, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    .line 230
    iget v2, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    invoke-virtual {p0, v2, v1, v10, v11}, Lcn/nubia/music/ui/StickyLayout;->smoothSetHeaderHeight(IIJ)V

    goto :goto_1

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 96
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/ui/StickyLayout;->initData()V

    .line 99
    :cond_1
    return-void
.end method

.method public requestDisallowInterceptTouchEventOnHeader(Z)V
    .locals 0

    .prologue
    .line 333
    iput-boolean p1, p0, Lcn/nubia/music/ui/StickyLayout;->mDisallowInterceptTouchEventOnHeader:Z

    .line 334
    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 2

    .prologue
    .line 293
    iget-boolean v0, p0, Lcn/nubia/music/ui/StickyLayout;->mInitDataSucceed:Z

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcn/nubia/music/ui/StickyLayout;->initData()V

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeaderHeight height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 300
    if-gtz p1, :cond_2

    .line 301
    const/4 p1, 0x0

    .line 306
    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 307
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    .line 313
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 314
    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 315
    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 316
    iput p1, p0, Lcn/nubia/music/ui/StickyLayout;->mHeaderHeight:I

    .line 322
    :goto_2
    return-void

    .line 302
    :cond_2
    iget v0, p0, Lcn/nubia/music/ui/StickyLayout;->mOriginalHeaderHeight:I

    if-le p1, v0, :cond_1

    .line 303
    iget p1, p0, Lcn/nubia/music/ui/StickyLayout;->mOriginalHeaderHeight:I

    goto :goto_0

    .line 309
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/music/ui/StickyLayout;->mStatus:I

    goto :goto_1

    .line 319
    :cond_4
    const-string v0, "null LayoutParams when setHeaderHeight"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setHeaderHeight(IZ)V
    .locals 0

    .prologue
    .line 286
    if-eqz p2, :cond_0

    .line 287
    invoke-virtual {p0, p1}, Lcn/nubia/music/ui/StickyLayout;->setOriginalHeaderHeight(I)V

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/music/ui/StickyLayout;->setHeaderHeight(I)V

    .line 290
    return-void
.end method

.method public setOnGiveUpTouchEventListener(Lcn/nubia/music/ui/StickyLayout$OnGiveUpTouchEventListener;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcn/nubia/music/ui/StickyLayout;->mGiveUpTouchEventListener:Lcn/nubia/music/ui/StickyLayout$OnGiveUpTouchEventListener;

    .line 126
    return-void
.end method

.method public setOriginalHeaderHeight(I)V
    .locals 0

    .prologue
    .line 282
    iput p1, p0, Lcn/nubia/music/ui/StickyLayout;->mOriginalHeaderHeight:I

    .line 283
    return-void
.end method

.method public setSticky(Z)V
    .locals 0

    .prologue
    .line 329
    iput-boolean p1, p0, Lcn/nubia/music/ui/StickyLayout;->mIsSticky:Z

    .line 330
    return-void
.end method

.method public smoothSetHeaderHeight(IIJ)V
    .locals 7

    .prologue
    .line 246
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/music/ui/StickyLayout;->smoothSetHeaderHeight(IIJZ)V

    .line 247
    return-void
.end method

.method public smoothSetHeaderHeight(IIJZ)V
    .locals 7

    .prologue
    .line 251
    long-to-float v0, p3

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v2, v0, 0x1

    .line 252
    sub-int v0, p2, p1

    int-to-float v0, v0

    int-to-float v1, v2

    div-float v5, v0, v1

    .line 253
    new-instance v0, Lcn/nubia/music/ui/StickyLayout$1;

    move-object v1, p0

    move v3, p2

    move v4, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/music/ui/StickyLayout$1;-><init>(Lcn/nubia/music/ui/StickyLayout;IIIFZ)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method
