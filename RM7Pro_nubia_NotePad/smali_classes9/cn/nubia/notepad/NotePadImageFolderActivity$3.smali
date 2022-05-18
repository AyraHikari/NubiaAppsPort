.class Lcn/nubia/notepad/NotePadImageFolderActivity$3;
.super Ljava/lang/Object;
.source "NotePadImageFolderActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadImageFolderActivity;->parseCursorInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcn/nubia/notepad/utils/FolderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadImageFolderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 362
    iput-object p1, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$3;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/notepad/utils/FolderInfo;Lcn/nubia/notepad/utils/FolderInfo;)I
    .locals 3
    .param p1, "info1"    # Lcn/nubia/notepad/utils/FolderInfo;
    .param p2, "info2"    # Lcn/nubia/notepad/utils/FolderInfo;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 367
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$3;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->access$600(Lcn/nubia/notepad/NotePadImageFolderActivity;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/notepad/utils/FolderInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/notepad/utils/FolderInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 362
    check-cast p1, Lcn/nubia/notepad/utils/FolderInfo;

    check-cast p2, Lcn/nubia/notepad/utils/FolderInfo;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/notepad/NotePadImageFolderActivity$3;->compare(Lcn/nubia/notepad/utils/FolderInfo;Lcn/nubia/notepad/utils/FolderInfo;)I

    move-result v0

    return v0
.end method
