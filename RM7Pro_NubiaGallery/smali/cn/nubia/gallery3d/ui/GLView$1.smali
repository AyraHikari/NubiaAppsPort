.class Lcn/nubia/gallery3d/ui/GLView$1;
.super Ljava/lang/Object;
.source "GLView.java"

# interfaces
.implements Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/GLView;->setIntroAnimation(Lcn/nubia/gallery3d/anim/StateTransitionAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/GLView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GLView$1;->this$0:Lcn/nubia/gallery3d/ui/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationDone()V
    .locals 1

    .line 260
    sget-boolean v0, Lcn/nubia/gallery3d/ui/GLView;->mGestureLock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 261
    sput-boolean v0, Lcn/nubia/gallery3d/ui/GLView;->mGestureLock:Z

    :cond_0
    return-void
.end method
