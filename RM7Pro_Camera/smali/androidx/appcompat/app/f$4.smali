.class Landroidx/appcompat/app/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ah$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->y()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 960
    iput-object p1, p0, Landroidx/appcompat/app/f$4;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .line 963
    iget-object v0, p0, Landroidx/appcompat/app/f$4;->a:Landroidx/appcompat/app/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/f;->a(Landroidx/core/f/ac;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
