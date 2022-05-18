.class Lcom/GifEncoder/GifMakeActivity$w;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/GifEncoder/GifMakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "w"
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/GifMakeActivity;


# direct methods
.method private constructor <init>(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/GifEncoder/GifMakeActivity;Lcom/GifEncoder/GifMakeActivity$k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/GifEncoder/GifMakeActivity$w;-><init>(Lcom/GifEncoder/GifMakeActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->p(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    new-instance v1, Lb/a/e/a/e;

    invoke-direct {v1}, Lb/a/e/a/e;-><init>()V

    invoke-static {v0, v1}, Lcom/GifEncoder/GifMakeActivity;->q(Lcom/GifEncoder/GifMakeActivity;Lb/a/e/a/e;)Lb/a/e/a/e;

    :cond_0
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->s(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    new-instance v1, Lb/a/e/a/d;

    invoke-direct {v1}, Lb/a/e/a/d;-><init>()V

    invoke-static {v0, v1}, Lcom/GifEncoder/GifMakeActivity;->t(Lcom/GifEncoder/GifMakeActivity;Lb/a/e/a/d;)Lb/a/e/a/d;

    :cond_1
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->u(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/c/a;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    new-instance v1, Lb/a/e/c/a;

    invoke-direct {v1}, Lb/a/e/c/a;-><init>()V

    invoke-static {v0, v1}, Lcom/GifEncoder/GifMakeActivity;->v(Lcom/GifEncoder/GifMakeActivity;Lb/a/e/c/a;)Lb/a/e/c/a;

    :cond_2
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/GifEncoder/GifMakeActivity;->w(Lcom/GifEncoder/GifMakeActivity;Z)V

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->u(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/c/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$w;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->u(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/e/c/a;->g()V

    :cond_3
    return-void
.end method
