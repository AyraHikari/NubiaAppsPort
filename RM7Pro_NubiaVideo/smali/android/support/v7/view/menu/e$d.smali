.class Landroid/support/v7/view/menu/e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/support/v7/widget/d0;

.field public final b:Landroid/support/v7/view/menu/g;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/d0;Landroid/support/v7/view/menu/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/d0;

    .line 3
    iput-object p2, p0, Landroid/support/v7/view/menu/e$d;->b:Landroid/support/v7/view/menu/g;

    .line 4
    iput p3, p0, Landroid/support/v7/view/menu/e$d;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/e$d;->a:Landroid/support/v7/widget/d0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->i()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
