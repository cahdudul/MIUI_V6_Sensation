.class Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;
.super Landroid/os/AsyncTask;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAlbumAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicControlScreenElement$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p2, "x1"    # Lmiui/maml/elements/MusicControlScreenElement$1;

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 690
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 694
    aget-object v1, p1, v5

    .line 695
    .local v1, "albumPath":Ljava/lang/String;
    aget-object v0, p1, v8

    .line 696
    .local v0, "albumName":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v2, p1, v5

    .line 697
    .local v2, "artistName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 699
    :try_start_0
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2800(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 700
    .local v3, "discard":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const/high16 v6, 0x400000

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    # setter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lmiui/maml/elements/MusicControlScreenElement;->access$2802(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 701
    if-eqz v3, :cond_0

    .line 702
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    .end local v3    # "discard":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2800(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 709
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2800(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-object v6, v6, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v6}, Lmiui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 714
    :cond_1
    :goto_1
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2900(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$3000(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 715
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$3100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmiui/maml/elements/ImageScreenElement;->show(Z)V

    .line 716
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$3100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v6

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$200(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    move-result-object v5

    sget-object v7, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-eq v5, v7, :cond_4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2800(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$2800(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 718
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v5}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    .line 720
    :cond_2
    return-object v9

    .line 705
    :catch_0
    move-exception v4

    .line 706
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "MusicControlScreenElement"

    const-string v6, "fail to decode album cover"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 712
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # setter for: Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v5, v9}, Lmiui/maml/elements/MusicControlScreenElement;->access$2802(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 716
    :cond_4
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$3200(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_2
.end method
