.class Lcn/nubia/notepad/NotePadShareActivity$3;
.super Ljava/lang/Object;
.source "NotePadShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadShareActivity;->getNoteData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadShareActivity;

.field final synthetic val$mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadShareActivity;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 505
    iput-object p1, p0, Lcn/nubia/notepad/NotePadShareActivity$3;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadShareActivity$3;->val$mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity$3;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$700(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity$3;->val$mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$3;->val$mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-object v2, v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getRealTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method
