.class Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AlarmAlertFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 300
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$3;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x1

    .line 303
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 308
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$3;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$500(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$3;->this$0:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->access$600(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
