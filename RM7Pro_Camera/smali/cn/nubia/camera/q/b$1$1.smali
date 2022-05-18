.class Lcn/nubia/camera/q/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/z/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/b$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/b$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/b$1;)V
    .locals 0

    .line 935
    iput-object p1, p0, Lcn/nubia/camera/q/b$1$1;->a:Lcn/nubia/camera/q/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 939
    iget-object p1, p0, Lcn/nubia/camera/q/b$1$1;->a:Lcn/nubia/camera/q/b$1;

    iget-object p1, p1, Lcn/nubia/camera/q/b$1;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->D()Z

    move-result p1

    if-nez p1, :cond_0

    .line 940
    iget-object p1, p0, Lcn/nubia/camera/q/b$1$1;->a:Lcn/nubia/camera/q/b$1;

    invoke-static {p1}, Lcn/nubia/camera/q/b$1;->a(Lcn/nubia/camera/q/b$1;)V

    :cond_0
    return-void
.end method
