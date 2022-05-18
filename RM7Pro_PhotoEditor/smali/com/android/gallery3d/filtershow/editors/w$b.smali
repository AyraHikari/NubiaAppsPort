.class Lcom/android/gallery3d/filtershow/editors/w$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/w;->a0(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/w;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/w;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/w$b;->a:Lcom/android/gallery3d/filtershow/editors/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/w$b;->a:Lcom/android/gallery3d/filtershow/editors/w;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/w;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    return-void
.end method
