.class Landroidx/constraintlayout/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/b/g;->e(Landroidx/constraintlayout/b/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/constraintlayout/b/g;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/b/g;)V
    .locals 0

    .line 214
    iput-object p1, p0, Landroidx/constraintlayout/b/g$1;->a:Landroidx/constraintlayout/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;)I
    .locals 0

    .line 217
    iget p1, p1, Landroidx/constraintlayout/b/h;->b:I

    iget p2, p2, Landroidx/constraintlayout/b/h;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 214
    check-cast p1, Landroidx/constraintlayout/b/h;

    check-cast p2, Landroidx/constraintlayout/b/h;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/b/g$1;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;)I

    move-result p1

    return p1
.end method
