.class Lcn/nubia/camera/pretty/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/facedetection/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/g;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

.field final synthetic b:Lcn/nubia/camera/pretty/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/g;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcn/nubia/camera/pretty/g$2;->b:Lcn/nubia/camera/pretty/g;

    iput-object p2, p0, Lcn/nubia/camera/pretty/g$2;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$2;->b:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->h(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$2;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-interface {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->b()V

    :cond_0
    return-void
.end method
