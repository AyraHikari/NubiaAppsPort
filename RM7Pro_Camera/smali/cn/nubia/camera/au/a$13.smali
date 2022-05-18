.class Lcn/nubia/camera/au/a$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/a;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcn/nubia/camera/au/a$13;->a:Lcn/nubia/camera/au/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 364
    iget-object p1, p0, Lcn/nubia/camera/au/a$13;->a:Lcn/nubia/camera/au/a;

    invoke-static {p1}, Lcn/nubia/camera/au/a;->l(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/k;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    iget-object p1, p0, Lcn/nubia/camera/au/a$13;->a:Lcn/nubia/camera/au/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/au/a;Z)V

    .line 366
    iget-object p1, p0, Lcn/nubia/camera/au/a$13;->a:Lcn/nubia/camera/au/a;

    invoke-static {p1}, Lcn/nubia/camera/au/a;->m(Lcn/nubia/camera/au/a;)V

    :cond_0
    return-void
.end method
