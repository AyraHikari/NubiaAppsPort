.class Lcn/nubia/camera/pretty/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 177
    iput-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->a(Lcn/nubia/camera/pretty/c;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->b(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/extendedUI/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/a;->a()V

    .line 182
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1, v0}, Lcn/nubia/camera/pretty/c;->a(Lcn/nubia/camera/pretty/c;Z)Z

    .line 183
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->c(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/pretty/a$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->c(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/pretty/a$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcn/nubia/camera/pretty/a$a;->a(Z)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->b(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/extendedUI/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/a;->b()V

    .line 188
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1, v0}, Lcn/nubia/camera/pretty/c;->a(Lcn/nubia/camera/pretty/c;Z)Z

    .line 189
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->c(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/pretty/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lcn/nubia/camera/pretty/c$1;->a:Lcn/nubia/camera/pretty/c;

    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->c(Lcn/nubia/camera/pretty/c;)Lcn/nubia/camera/pretty/a$a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/camera/pretty/a$a;->a(Z)V

    .line 192
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ba/f;->c()V

    :cond_2
    :goto_0
    return-void
.end method
