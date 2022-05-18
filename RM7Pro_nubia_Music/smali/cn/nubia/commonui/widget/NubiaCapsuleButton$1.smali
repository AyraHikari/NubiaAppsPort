.class Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;
.super Ljava/lang/Object;
.source "NubiaCapsuleButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaCapsuleButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 199
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$000(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)V

    .line 200
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$100(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$200(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$100(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 202
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$200(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;->onCapsuleClick(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$300(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$400(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$300(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 205
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$400(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;->onCapsuleClick(I)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$500(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$600(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$500(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 208
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$600(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;->onCapsuleClick(I)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$700(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$800(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$700(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 211
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;->a:Lcn/nubia/commonui/widget/NubiaCapsuleButton;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->access$800(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;->onCapsuleClick(I)V

    goto :goto_0
.end method
