.class public abstract Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/n$a;
    }
.end annotation


# instance fields
.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/n$a;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:I

.field o:Ljava/lang/CharSequence;

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field t:Z

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Landroidx/fragment/app/n;->l:Z

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Landroidx/fragment/app/n;->t:Z

    return-void
.end method


# virtual methods
.method a(Landroidx/fragment/app/n$a;)V
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget v0, p0, Landroidx/fragment/app/n;->e:I

    iput v0, p1, Landroidx/fragment/app/n$a;->c:I

    .line 115
    iget v0, p0, Landroidx/fragment/app/n;->f:I

    iput v0, p1, Landroidx/fragment/app/n$a;->d:I

    .line 116
    iget v0, p0, Landroidx/fragment/app/n;->g:I

    iput v0, p1, Landroidx/fragment/app/n$a;->e:I

    .line 117
    iget v0, p0, Landroidx/fragment/app/n;->h:I

    iput v0, p1, Landroidx/fragment/app/n$a;->f:I

    return-void
.end method
