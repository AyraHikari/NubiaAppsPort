.class final Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PictureBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageSimpleGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;
    .param p2, "x1"    # Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$1;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 286
    .local v0, "p":[F
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$100(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 288
    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$200(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$100(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$200(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$200(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 290
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$300(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$100(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 295
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 292
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$100(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$400(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$400(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 293
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$300(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity$ImageSimpleGesture;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;->access$100(Lcn/nubia/calendar/submodule_agenda/activity/PictureBrowserActivity;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method
