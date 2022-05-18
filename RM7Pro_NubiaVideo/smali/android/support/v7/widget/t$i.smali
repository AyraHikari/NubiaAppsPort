.class Landroid/support/v7/widget/t$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$z;

.field public b:Landroid/support/v7/widget/RecyclerView$z;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v7/widget/t$i;->a:Landroid/support/v7/widget/RecyclerView$z;

    .line 4
    iput-object p2, p0, Landroid/support/v7/widget/t$i;->b:Landroid/support/v7/widget/RecyclerView$z;

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$z;IIII)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/t$i;-><init>(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$z;)V

    .line 6
    iput p3, p0, Landroid/support/v7/widget/t$i;->c:I

    .line 7
    iput p4, p0, Landroid/support/v7/widget/t$i;->d:I

    .line 8
    iput p5, p0, Landroid/support/v7/widget/t$i;->e:I

    .line 9
    iput p6, p0, Landroid/support/v7/widget/t$i;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$z;IIIILandroid/support/v7/widget/t$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/support/v7/widget/t$i;-><init>(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$z;IIII)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/t$i;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/t$i;->b:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/t$i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/t$i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/t$i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/t$i;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
