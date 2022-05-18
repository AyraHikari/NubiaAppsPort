.class Lcom/android/gallery3d/filtershow/FilterShowActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->e2(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$c;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$c;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$c;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J1()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$c;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W()V

    :goto_0
    return-void
.end method
