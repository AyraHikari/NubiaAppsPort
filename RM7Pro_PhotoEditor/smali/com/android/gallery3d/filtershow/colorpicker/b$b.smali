.class Lcom/android/gallery3d/filtershow/colorpicker/b$b;
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
.field final synthetic a:Lcom/android/gallery3d/filtershow/colorpicker/b;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/colorpicker/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/b$b;->a:Lcom/android/gallery3d/filtershow/colorpicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/b$b;->a:Lcom/android/gallery3d/filtershow/colorpicker/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
