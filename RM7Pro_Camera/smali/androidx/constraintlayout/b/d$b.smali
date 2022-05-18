.class Landroidx/constraintlayout/b/d$b;
.super Landroidx/constraintlayout/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Landroidx/constraintlayout/b/d;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/c;)V
    .locals 0

    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/b/d$b;->g:Landroidx/constraintlayout/b/d;

    invoke-direct {p0}, Landroidx/constraintlayout/b/b;-><init>()V

    .line 90
    new-instance p1, Landroidx/constraintlayout/b/i;

    invoke-direct {p1, p0, p2}, Landroidx/constraintlayout/b/i;-><init>(Landroidx/constraintlayout/b/b;Landroidx/constraintlayout/b/c;)V

    iput-object p1, p0, Landroidx/constraintlayout/b/d$b;->e:Landroidx/constraintlayout/b/b$a;

    return-void
.end method
