.class Lcom/GifEncoder/GifMakeActivity$q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GifEncoder/GifMakeActivity$q;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/GifMakeActivity$q;


# direct methods
.method constructor <init>(Lcom/GifEncoder/GifMakeActivity$q;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$q$a;->a:Lcom/GifEncoder/GifMakeActivity$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$q$a;->a:Lcom/GifEncoder/GifMakeActivity$q;

    iget-object v0, v0, Lcom/GifEncoder/GifMakeActivity$q;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->f(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
