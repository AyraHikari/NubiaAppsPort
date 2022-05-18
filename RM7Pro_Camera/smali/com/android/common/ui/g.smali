.class public Lcom/android/common/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:I


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/common/ui/g;->c:I

    .line 16
    iput p1, p0, Lcom/android/common/ui/g;->a:I

    .line 17
    iput-object p2, p0, Lcom/android/common/ui/g;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/android/common/ui/g;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/common/ui/g;->c:I

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/common/ui/g;->b:Landroid/view/View;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/android/common/ui/g;->c:I

    return v0
.end method
