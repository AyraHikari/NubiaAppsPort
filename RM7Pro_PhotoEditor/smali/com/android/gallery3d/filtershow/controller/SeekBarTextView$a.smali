.class Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$a;->a:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$a;->a:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method
