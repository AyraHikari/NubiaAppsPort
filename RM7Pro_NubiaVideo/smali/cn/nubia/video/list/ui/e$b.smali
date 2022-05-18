.class Lcn/nubia/video/list/ui/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/e;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/e;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/e$b;->a:Lcn/nubia/video/list/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    check-cast p1, Lcn/nubia/video/commonui/app/b;

    const p2, 0x7f090067

    .line 2
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 3
    iget-object p2, p0, Lcn/nubia/video/list/ui/e$b;->a:Lcn/nubia/video/list/ui/e;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/nubia/video/list/ui/e;->b(Lcn/nubia/video/list/ui/e;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcn/nubia/video/list/ui/e$b;->a:Lcn/nubia/video/list/ui/e;

    invoke-static {p1}, Lcn/nubia/video/list/ui/e;->a(Lcn/nubia/video/list/ui/e;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcn/nubia/video/list/ui/e$b;->a:Lcn/nubia/video/list/ui/e;

    invoke-static {p2}, Lcn/nubia/video/list/ui/e;->c(Lcn/nubia/video/list/ui/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcn/nubia/video/list/ui/e;->d(Lcn/nubia/video/list/ui/e;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcn/nubia/video/list/ui/e$b;->a:Lcn/nubia/video/list/ui/e;

    invoke-static {p1}, Lcn/nubia/video/list/ui/e;->e(Lcn/nubia/video/list/ui/e;)Lb/a/b/c/b/m;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/list/ui/e$b;->a:Lcn/nubia/video/list/ui/e;

    invoke-static {p2}, Lcn/nubia/video/list/ui/e;->a(Lcn/nubia/video/list/ui/e;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/a/b/c/b/m;->u(Ljava/lang/String;)Z

    .line 7
    iget-object p1, p0, Lcn/nubia/video/list/ui/e$b;->a:Lcn/nubia/video/list/ui/e;

    invoke-static {p1}, Lcn/nubia/video/list/ui/e;->c(Lcn/nubia/video/list/ui/e;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0099

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
