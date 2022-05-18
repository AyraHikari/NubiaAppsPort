.class Lcom/android/gallery3d/filtershow/colorpicker/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/colorpicker/b;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/colorpicker/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/colorpicker/a;

.field final synthetic b:Lcom/android/gallery3d/filtershow/colorpicker/b;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/colorpicker/b;Lcom/android/gallery3d/filtershow/colorpicker/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/b$a;->b:Lcom/android/gallery3d/filtershow/colorpicker/b;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/colorpicker/b$a;->a:Lcom/android/gallery3d/filtershow/colorpicker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/b$a;->a:Lcom/android/gallery3d/filtershow/colorpicker/a;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/b$a;->b:Lcom/android/gallery3d/filtershow/colorpicker/b;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/colorpicker/b;->f:[F

    invoke-interface {p1, v0}, Lcom/android/gallery3d/filtershow/colorpicker/a;->setColor([F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/b$a;->b:Lcom/android/gallery3d/filtershow/colorpicker/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
