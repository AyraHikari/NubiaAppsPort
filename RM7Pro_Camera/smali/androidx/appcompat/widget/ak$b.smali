.class Landroidx/appcompat/widget/ak$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ak;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ak;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Landroidx/appcompat/widget/ak$b;->a:Landroidx/appcompat/widget/ak;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1348
    iget-object v0, p0, Landroidx/appcompat/widget/ak$b;->a:Landroidx/appcompat/widget/ak;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ak;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Landroidx/appcompat/widget/ak$b;->a:Landroidx/appcompat/widget/ak;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ak;->b_()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1356
    iget-object v0, p0, Landroidx/appcompat/widget/ak$b;->a:Landroidx/appcompat/widget/ak;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ak;->c()V

    return-void
.end method
