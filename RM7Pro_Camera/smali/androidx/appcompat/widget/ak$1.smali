.class Landroidx/appcompat/widget/ak$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ak;->h()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ak;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ak;)V
    .locals 0

    .line 1167
    iput-object p1, p0, Landroidx/appcompat/widget/ak$1;->a:Landroidx/appcompat/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1171
    iget-object v0, p0, Landroidx/appcompat/widget/ak$1;->a:Landroidx/appcompat/widget/ak;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ak;->j()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Landroidx/appcompat/widget/ak$1;->a:Landroidx/appcompat/widget/ak;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ak;->b_()V

    :cond_0
    return-void
.end method
