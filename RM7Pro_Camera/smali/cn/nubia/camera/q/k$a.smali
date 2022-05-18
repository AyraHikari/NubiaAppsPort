.class Lcn/nubia/camera/q/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/k;

.field private b:Landroid/view/View;

.field private c:Landroid/view/ViewGroup$LayoutParams;

.field private d:Z


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/k;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/q/k$a;->a:Lcn/nubia/camera/q/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/q/k$a;->b:Landroid/view/View;

    .line 96
    iput-object p1, p0, Lcn/nubia/camera/q/k$a;->c:Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcn/nubia/camera/q/k$a;->d:Z

    .line 100
    iput-object p2, p0, Lcn/nubia/camera/q/k$a;->b:Landroid/view/View;

    .line 101
    iput-object p3, p0, Lcn/nubia/camera/q/k$a;->c:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcn/nubia/camera/q/k$a;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcn/nubia/camera/q/k$a;->d:Z

    return v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/q/k$a;->b:Landroid/view/View;

    return-object v0
.end method

.method public c()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/q/k$a;->c:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method
