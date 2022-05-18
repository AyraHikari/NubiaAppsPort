.class Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotePadImageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/adapter/NotePadImageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field mImgPic:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/nubia/notepad/adapter/NotePadImageListAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/notepad/adapter/NotePadImageListAdapter;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->this$0:Lcn/nubia/notepad/adapter/NotePadImageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/notepad/adapter/NotePadImageListAdapter;Lcn/nubia/notepad/adapter/NotePadImageListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/notepad/adapter/NotePadImageListAdapter;
    .param p2, "x1"    # Lcn/nubia/notepad/adapter/NotePadImageListAdapter$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;-><init>(Lcn/nubia/notepad/adapter/NotePadImageListAdapter;)V

    return-void
.end method
