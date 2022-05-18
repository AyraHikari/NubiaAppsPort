.class Lcn/nubia/camera/ar/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ar/a;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ar/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ar/a;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcn/nubia/camera/ar/a$1;->a:Lcn/nubia/camera/ar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcn/nubia/camera/ar/a$1;->a:Lcn/nubia/camera/ar/a;

    invoke-static {p1}, Lcn/nubia/camera/ar/a;->a(Lcn/nubia/camera/ar/a;)Lcn/nubia/camera/k;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcn/nubia/camera/ar/a$1;->a:Lcn/nubia/camera/ar/a;

    invoke-static {p1}, Lcn/nubia/camera/ar/a;->b(Lcn/nubia/camera/ar/a;)V

    :cond_0
    return-void
.end method
