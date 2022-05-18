.class Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;
.super Ljava/lang/Object;
.source "MaterialPickerDialogFragment.java"

# interfaces
.implements Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialPickerDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;->this$0:Lcom/google/android/material/picker/MaterialPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChanged(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 226
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;->this$0:Lcom/google/android/material/picker/MaterialPickerDialogFragment;

    invoke-static {p0, p1}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->access$200(Lcom/google/android/material/picker/MaterialPickerDialogFragment;Ljava/lang/Object;)V

    return-void
.end method
