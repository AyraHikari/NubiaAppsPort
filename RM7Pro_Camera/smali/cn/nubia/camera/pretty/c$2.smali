.class Lcn/nubia/camera/pretty/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/extendedUI/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/c;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/c;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcn/nubia/camera/pretty/c$2;->a:Lcn/nubia/camera/pretty/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/pretty/c$2;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {v0, p1}, Lcn/nubia/camera/pretty/c;->b(Lcn/nubia/camera/pretty/c;Z)Z

    .line 203
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$2;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->d(Lcn/nubia/camera/pretty/c;)V

    .line 204
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$2;->a:Lcn/nubia/camera/pretty/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/pretty/c;->a(Lcn/nubia/camera/pretty/c;Z)Z

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$2;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->a(Lcn/nubia/camera/pretty/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$2;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->e(Lcn/nubia/camera/pretty/c;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800f0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$2;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->e(Lcn/nubia/camera/pretty/c;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0800f1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
