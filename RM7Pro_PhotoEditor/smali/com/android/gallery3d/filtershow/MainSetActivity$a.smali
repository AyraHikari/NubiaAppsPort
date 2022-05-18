.class Lcom/android/gallery3d/filtershow/MainSetActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/MainSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/MainSetActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/MainSetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity$a;->a:Lcom/android/gallery3d/filtershow/MainSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity$a;->a:Lcom/android/gallery3d/filtershow/MainSetActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
