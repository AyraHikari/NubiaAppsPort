.class Lcn/nubia/camera/debugmode/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/debugmode/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/debugmode/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/debugmode/b;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/nubia/camera/debugmode/b$1;->a:Lcn/nubia/camera/debugmode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b$1;->a:Lcn/nubia/camera/debugmode/b;

    const-string v1, "key_12M_to_48M"

    const-string v2, "12M"

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/debugmode/b;->a(Lcn/nubia/camera/debugmode/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b$1;->a:Lcn/nubia/camera/debugmode/b;

    const-string v2, "48M"

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/debugmode/b;->b(Lcn/nubia/camera/debugmode/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/debugmode/b$1;->a:Lcn/nubia/camera/debugmode/b;

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/debugmode/b;->b(Lcn/nubia/camera/debugmode/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/debugmode/b$1;->a:Lcn/nubia/camera/debugmode/b;

    invoke-static {p1}, Lcn/nubia/camera/debugmode/b;->a(Lcn/nubia/camera/debugmode/b;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->k()V

    return-void
.end method
