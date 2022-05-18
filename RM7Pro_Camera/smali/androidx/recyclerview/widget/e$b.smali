.class Landroidx/recyclerview/widget/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Landroidx/recyclerview/widget/e$b;->a:Z

    .line 47
    iput v0, p0, Landroidx/recyclerview/widget/e$b;->b:I

    .line 48
    iput v0, p0, Landroidx/recyclerview/widget/e$b;->c:I

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Landroidx/recyclerview/widget/e$b;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iput v0, p0, Landroidx/recyclerview/widget/e$b;->e:I

    return-void
.end method
