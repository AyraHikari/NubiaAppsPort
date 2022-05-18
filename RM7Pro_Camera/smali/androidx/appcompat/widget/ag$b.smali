.class Landroidx/appcompat/widget/ag$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ag;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ag;)V
    .locals 0

    .line 698
    iput-object p1, p0, Landroidx/appcompat/widget/ag$b;->a:Landroidx/appcompat/widget/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 709
    iget-object v0, p0, Landroidx/appcompat/widget/ag$b;->a:Landroidx/appcompat/widget/ag;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ag;->a:Landroidx/appcompat/widget/ag$b;

    .line 710
    iget-object v0, p0, Landroidx/appcompat/widget/ag$b;->a:Landroidx/appcompat/widget/ag;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ag;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 714
    iget-object v0, p0, Landroidx/appcompat/widget/ag$b;->a:Landroidx/appcompat/widget/ag;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ag;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 704
    iget-object v0, p0, Landroidx/appcompat/widget/ag$b;->a:Landroidx/appcompat/widget/ag;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ag;->a:Landroidx/appcompat/widget/ag$b;

    .line 705
    iget-object v0, p0, Landroidx/appcompat/widget/ag$b;->a:Landroidx/appcompat/widget/ag;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ag;->drawableStateChanged()V

    return-void
.end method
