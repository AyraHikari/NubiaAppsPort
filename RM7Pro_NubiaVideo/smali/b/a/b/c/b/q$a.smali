.class Lb/a/b/c/b/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/c/b/q;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lb/a/b/c/b/q;


# direct methods
.method constructor <init>(Lb/a/b/c/b/q;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/q$a;->b:Lb/a/b/c/b/q;

    iput p2, p0, Lb/a/b/c/b/q$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/a/b/c/b/q$a;->b:Lb/a/b/c/b/q;

    iget v0, p0, Lb/a/b/c/b/q$a;->a:I

    invoke-virtual {p1, v0}, Lb/a/b/c/b/q;->d(I)V

    return-void
.end method
