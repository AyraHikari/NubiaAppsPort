.class public Landroidx/constraintlayout/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroidx/constraintlayout/b/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/b/f$a<",
            "Landroidx/constraintlayout/b/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroidx/constraintlayout/b/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/b/f$a<",
            "Landroidx/constraintlayout/b/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroidx/constraintlayout/b/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/b/f$a<",
            "Landroidx/constraintlayout/b/h;",
            ">;"
        }
    .end annotation
.end field

.field d:[Landroidx/constraintlayout/b/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/constraintlayout/b/f$b;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroidx/constraintlayout/b/f$b;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/b/c;->a:Landroidx/constraintlayout/b/f$a;

    .line 23
    new-instance v0, Landroidx/constraintlayout/b/f$b;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/b/f$b;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/b/c;->b:Landroidx/constraintlayout/b/f$a;

    .line 24
    new-instance v0, Landroidx/constraintlayout/b/f$b;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/b/f$b;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/b/c;->c:Landroidx/constraintlayout/b/f$a;

    const/16 v0, 0x20

    new-array v0, v0, [Landroidx/constraintlayout/b/h;

    .line 25
    iput-object v0, p0, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    return-void
.end method
