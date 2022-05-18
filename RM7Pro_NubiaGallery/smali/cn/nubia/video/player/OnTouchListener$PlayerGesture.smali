.class Lcn/nubia/video/player/OnTouchListener$PlayerGesture;
.super Ljava/lang/Object;
.source "OnTouchListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/OnTouchListener;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/OnTouchListener;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/OnTouchListener;Lcn/nubia/video/player/OnTouchListener$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;-><init>(Lcn/nubia/video/player/OnTouchListener;)V

    return-void
.end method

.method private maybeDoublePorintGesture(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 162
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcn/nubia/video/player/OnTouchListener;->access$1002(Lcn/nubia/video/player/OnTouchListener;Z)Z

    .line 163
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v0, v3}, Lcn/nubia/video/player/OnTouchListener;->access$402(Lcn/nubia/video/player/OnTouchListener;Z)Z

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 165
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 166
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v1, p1

    .line 167
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1}, Lcn/nubia/video/player/OnTouchListener;->access$1100(Lcn/nubia/video/player/OnTouchListener;)F

    move-result p1

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p1, v0}, Lcn/nubia/video/player/OnTouchListener;->access$1102(Lcn/nubia/video/player/OnTouchListener;F)F

    goto :goto_0

    :cond_0
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 170
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 171
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v0}, Lcn/nubia/video/player/OnTouchListener;->access$1100(Lcn/nubia/video/player/OnTouchListener;)F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v1}, Lcn/nubia/video/player/OnTouchListener;->access$1200(Lcn/nubia/video/player/OnTouchListener;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 172
    iget-object v1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v1}, Lcn/nubia/video/player/OnTouchListener;->access$1300(Lcn/nubia/video/player/OnTouchListener;)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 173
    iget-object v1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v1, v0}, Lcn/nubia/video/player/OnTouchListener;->access$1302(Lcn/nubia/video/player/OnTouchListener;I)I

    .line 174
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v0}, Lcn/nubia/video/player/OnTouchListener;->access$1100(Lcn/nubia/video/player/OnTouchListener;)F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v1}, Lcn/nubia/video/player/OnTouchListener;->access$1200(Lcn/nubia/video/player/OnTouchListener;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 175
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1}, Lcn/nubia/video/player/OnTouchListener;->access$200(Lcn/nubia/video/player/OnTouchListener;)Lcn/nubia/video/player/ViewBase;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/ViewBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->shrinkScale()V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v0}, Lcn/nubia/video/player/OnTouchListener;->access$1100(Lcn/nubia/video/player/OnTouchListener;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v0}, Lcn/nubia/video/player/OnTouchListener;->access$1200(Lcn/nubia/video/player/OnTouchListener;)F

    move-result v0

    neg-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 177
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1}, Lcn/nubia/video/player/OnTouchListener;->access$200(Lcn/nubia/video/player/OnTouchListener;)Lcn/nubia/video/player/ViewBase;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/ViewBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->extendScale()V

    :cond_2
    :goto_0
    return v3

    :cond_3
    return v2
.end method

.method private maybeHorizontalGesture(FFFF)V
    .locals 0

    sub-float/2addr p3, p1

    .line 142
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p2}, Lcn/nubia/video/player/OnTouchListener;->access$300(Lcn/nubia/video/player/OnTouchListener;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/nubia/video/player/OnTouchListener;->access$402(Lcn/nubia/video/player/OnTouchListener;Z)Z

    .line 144
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1, p2}, Lcn/nubia/video/player/OnTouchListener;->access$502(Lcn/nubia/video/player/OnTouchListener;Z)Z

    .line 145
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1}, Lcn/nubia/video/player/OnTouchListener;->access$300(Lcn/nubia/video/player/OnTouchListener;)F

    move-result p2

    mul-float/2addr p3, p2

    float-to-int p2, p3

    invoke-static {p1, p2}, Lcn/nubia/video/player/OnTouchListener;->access$602(Lcn/nubia/video/player/OnTouchListener;I)I

    .line 146
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1}, Lcn/nubia/video/player/OnTouchListener;->access$700(Lcn/nubia/video/player/OnTouchListener;)I

    move-result p2

    iget-object p3, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p3}, Lcn/nubia/video/player/OnTouchListener;->access$600(Lcn/nubia/video/player/OnTouchListener;)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcn/nubia/video/player/OnTouchListener;->access$800(Lcn/nubia/video/player/OnTouchListener;I)I

    move-result p1

    .line 147
    iget-object p2, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p2}, Lcn/nubia/video/player/OnTouchListener;->access$200(Lcn/nubia/video/player/OnTouchListener;)Lcn/nubia/video/player/ViewBase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/video/player/ViewBase;->onGestrueProgressChange(I)V

    :cond_0
    return-void
.end method

.method private maybeVerticalGesture(FFFF)V
    .locals 0

    sub-float/2addr p2, p4

    .line 151
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p3, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p3}, Lcn/nubia/video/player/OnTouchListener;->access$300(Lcn/nubia/video/player/OnTouchListener;)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcn/nubia/video/player/OnTouchListener;->access$402(Lcn/nubia/video/player/OnTouchListener;Z)Z

    .line 153
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcn/nubia/video/player/OnTouchListener;->access$502(Lcn/nubia/video/player/OnTouchListener;Z)Z

    .line 154
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1}, Lcn/nubia/video/player/OnTouchListener;->access$900(Lcn/nubia/video/player/OnTouchListener;)Lcn/nubia/video/player/MediaSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/MediaSettings;->setVolume(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 190
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1}, Lcn/nubia/video/player/OnTouchListener;->access$1400(Lcn/nubia/video/player/OnTouchListener;)V

    .line 191
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1}, Lcn/nubia/video/player/OnTouchListener;->access$200(Lcn/nubia/video/player/OnTouchListener;)Lcn/nubia/video/player/ViewBase;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/player/ViewBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/video/player/OnTouchListener;->access$702(Lcn/nubia/video/player/OnTouchListener;I)I

    .line 192
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p1}, Lcn/nubia/video/player/OnTouchListener;->access$900(Lcn/nubia/video/player/OnTouchListener;)Lcn/nubia/video/player/MediaSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/MediaSettings;->reset()V

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 p3, 0x1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-direct {p0, p2}, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->maybeDoublePorintGesture(Landroid/view/MotionEvent;)Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p4, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {p4}, Lcn/nubia/video/player/OnTouchListener;->access$1000(Lcn/nubia/video/player/OnTouchListener;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float v1, p4, v0

    .line 220
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    invoke-static {v1}, Lcn/nubia/video/player/OnTouchListener;->access$1500(Lcn/nubia/video/player/OnTouchListener;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->this$0:Lcn/nubia/video/player/OnTouchListener;

    .line 221
    invoke-static {v1}, Lcn/nubia/video/player/OnTouchListener;->access$500(Lcn/nubia/video/player/OnTouchListener;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    :cond_2
    invoke-direct {p0, p4, p1, v0, p2}, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->maybeHorizontalGesture(FFFF)V

    goto :goto_0

    .line 224
    :cond_3
    invoke-direct {p0, p4, p1, v0, p2}, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;->maybeVerticalGesture(FFFF)V

    :cond_4
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
