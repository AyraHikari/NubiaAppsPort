.class Lcom/android/gallery3d/filtershow/editors/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/f;->Z(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/f;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/f$b;->a:Lcom/android/gallery3d/filtershow/editors/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/f$b;->a:Lcom/android/gallery3d/filtershow/editors/f;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/editors/f;->Y(Landroid/view/MenuItem;)V

    const/4 p1, 0x1

    return p1
.end method
