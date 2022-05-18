.class Lcn/nubia/camera/o/c$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/o/c$4;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/c$4;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/c$4;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcn/nubia/camera/o/c$4$1;->a:Lcn/nubia/camera/o/c$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcn/nubia/camera/o/c$4$1;->a:Lcn/nubia/camera/o/c$4;

    iget-object v0, v0, Lcn/nubia/camera/o/c$4;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->h(Lcn/nubia/camera/o/c;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method
