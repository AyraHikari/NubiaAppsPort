.class Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotePadImageFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mCamera:Landroid/widget/TextView;

.field mFolderName:Landroid/widget/TextView;

.field mImage:Landroid/widget/ImageView;

.field mImageCount:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->this$0:Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;
    .param p2, "x1"    # Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$1;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;-><init>(Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;)V

    return-void
.end method
