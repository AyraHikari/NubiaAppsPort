.class Lcn/nubia/music/app/menu/MusicListActionModManager$4;
.super Ljava/lang/Object;
.source "MusicListActionModManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/menu/MusicListActionModManager;->setSelectedClickEvent(Lcn/nubia/commonui/actionbar/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckedTextView;

.field final synthetic b:Lcn/nubia/music/app/menu/MusicListActionModManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/menu/MusicListActionModManager;Landroid/widget/CheckedTextView;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$4;->b:Lcn/nubia/music/app/menu/MusicListActionModManager;

    iput-object p2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$4;->a:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$4;->b:Lcn/nubia/music/app/menu/MusicListActionModManager;

    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$4;->a:Landroid/widget/CheckedTextView;

    invoke-static {v0, v1}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$1300(Lcn/nubia/music/app/menu/MusicListActionModManager;Landroid/widget/CheckedTextView;)V

    .line 696
    return-void
.end method
