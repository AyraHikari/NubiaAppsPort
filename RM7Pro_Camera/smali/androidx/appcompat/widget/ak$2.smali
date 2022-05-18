.class Landroidx/appcompat/widget/ak$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 1186
    iput-object p1, p0, Landroidx/appcompat/widget/ak$2;->a:Landroidx/appcompat/widget/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 1192
    iget-object p1, p0, Landroidx/appcompat/widget/ak$2;->a:Landroidx/appcompat/widget/ak;

    iget-object p1, p1, Landroidx/appcompat/widget/ak;->c:Landroidx/appcompat/widget/ag;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1195
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ag;->setListSelectionHidden(Z)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
