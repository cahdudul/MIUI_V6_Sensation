.class public Lmiui/maml/elements/MusicControlScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;,
        Lmiui/maml/elements/MusicControlScreenElement$PlayerType;,
        Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;
    }
.end annotation


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final CHECK_MUSIC_STATE_INTERVAL:I = 0x3e8

.field private static final CRLF:Ljava/lang/String; = "\n"

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field public static final LYRIC_AFTER:Ljava/lang/String; = "lyric_after"

.field public static final LYRIC_BEFORE:Ljava/lang/String; = "lyric_before"

.field public static final LYRIC_CURRENT:Ljava/lang/String; = "lyric_current"

.field public static final LYRIC_CURRENT_LINE_PROGRESS:Ljava/lang/String; = "lyric_current_line_progress"

.field public static final LYRIC_LAST:Ljava/lang/String; = "lyric_last"

.field public static final LYRIC_NEXT:Ljava/lang/String; = "lyric_next"

.field private static final MAX_ALBUM_COVER_PIXEL_SIZE:I = 0x400000

.field private static final MIUI_PLAYER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.player"

.field private static final MSG_BROADCAST:I = 0x0

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_INNER_PAUSE:I = 0x3

.field private static final MSG_INNER_RESUME:I = 0x2

.field public static final MUSIC_DURATION:Ljava/lang/String; = "music_duration"

.field public static final MUSIC_POSITION:Ljava/lang/String; = "music_position"

.field public static final MUSIC_STATE:Ljava/lang/String; = "music_state"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final PLAYER_NAME:Ljava/lang/String; = "player_name"

.field public static final PLAYER_TYPE:Ljava/lang/String; = "player_type"

.field private static SUPPORT_PLAYER_LIST:Ljava/util/ArrayList; = null

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"

.field private static final TEMP_ALBUM_PATH:Ljava/lang/String; = "/data/data/com.miui.player/files/ablum.jpg"

.field public static final VAR_MUSIC_ARTIST:Ljava/lang/String; = "artist"

.field public static final VAR_MUSIC_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mArtistVar:Lmiui/maml/util/IndexedStringVariable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShow:Z

.field private mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

.field private mCheckMusicStateRunnable:Ljava/lang/Runnable;

.field private mCurrentLineNumber:I

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mDuration:J

.field private mDurationVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mEnableLyric:Z

.field private mEnableProgress:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mFreezeState:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;

.field private mHandlerThreadStarted:Z

.field private mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

.field private mIsSystemPlayer:Z

.field private mLastUpdateTime:J

.field private mLyricAfterBuilder:Ljava/lang/StringBuilder;

.field private mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

.field private mLyricArray:[Ljava/lang/String;

.field private mLyricBeforeBuilder:Ljava/lang/StringBuilder;

.field private mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

.field private mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

.field private mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

.field private mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

.field private mMiuiPlayerPreference:Landroid/content/SharedPreferences;

.field private mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mNeedUpdateLyric:Z

.field private mNeedUpdateProgress:Z

.field private mPlayerNameVar:Lmiui/maml/util/IndexedStringVariable;

.field private mPlayerPackage:Ljava/lang/String;

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

.field private mPlayerTypeVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mPlaying:Z

.field private mPosition:J

.field private mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mRegistered:Z

.field private mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lmiui/maml/elements/TextScreenElement;

.field private mTimeArray:[I

.field private mTitleVar:Lmiui/maml/util/IndexedStringVariable;

.field private mUnfreezeStateRunnable:Ljava/lang/Runnable;

.field private mUpdateMusicProgress:Ljava/lang/Runnable;

.field private mUpdateProgressInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    .line 195
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.fmradio"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "cn.kuwo.player"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.douban.radio"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.duomi.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.kugou.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.netease.cloudmusic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.sds.android.ttpod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.qqmusic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.ting.mp3.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "com.ting.mp3.qianqian.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "fm.xiami.main"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    const-string v1, "yong.moobo.musicplayer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 9
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 211
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 345
    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$1;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$1;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 507
    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$2;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$2;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckMusicStateRunnable:Ljava/lang/Runnable;

    .line 880
    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$3;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$3;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    .line 1100
    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$4;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$4;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUnfreezeStateRunnable:Ljava/lang/Runnable;

    .line 213
    const-string v4, "music_prev"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    .line 214
    const-string v4, "music_next"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    .line 215
    const-string v4, "music_play"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    .line 216
    const-string v4, "music_pause"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    .line 217
    const-string v4, "music_display"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/TextScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    .line 218
    const-string v4, "music_album_cover"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ImageScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    .line 219
    invoke-direct {p0, p0}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    .line 221
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 222
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 223
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 224
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 225
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v4, v6}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 226
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v4, :cond_1

    .line 227
    const-string v4, "defAlbumCover"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "strDefAlbumCoverBmp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v4, v2}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 231
    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 232
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 235
    .end local v2    # "strDefAlbumCoverBmp":Ljava/lang/String;
    :cond_1
    const-string v4, "autoShow"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 236
    const-string v4, "enableLyric"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 237
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    .line 238
    const-string v4, "updateProgressInterval"

    const/16 v7, 0x3e8

    invoke-virtual {p0, p1, v4, v7}, Lmiui/maml/elements/MusicControlScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    .line 239
    const-string v4, "systemPlayer"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsSystemPlayer:Z

    .line 240
    iget v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFrameRate:F

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 241
    const/high16 v4, 0x41f00000    # 30.0f

    iput v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFrameRate:F

    .line 244
    :cond_2
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v4, :cond_4

    .line 245
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    .line 246
    .local v3, "variables":Lmiui/maml/data/Variables;
    new-instance v4, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "music_state"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 247
    new-instance v4, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "player_type"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerTypeVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 248
    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "player_name"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerNameVar:Lmiui/maml/util/IndexedStringVariable;

    .line 249
    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "title"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;

    .line 250
    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "artist"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;

    .line 251
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_3

    .line 252
    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "lyric_current"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

    .line 253
    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "lyric_before"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

    .line 254
    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "lyric_after"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

    .line 255
    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "lyric_last"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

    .line 256
    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "lyric_next"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

    .line 257
    new-instance v4, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "lyric_current_line_progress"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 259
    :cond_3
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz v4, :cond_4

    .line 260
    new-instance v4, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "music_duration"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 261
    new-instance v4, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v8, "music_position"

    invoke-direct {v4, v7, v8, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 264
    .end local v3    # "variables":Lmiui/maml/data/Variables;
    :cond_4
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 265
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v4, :cond_7

    :goto_2
    iput-boolean v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 267
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    .line 268
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "com.miui.player.metachanged"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "com.miui.player.refreshprogress"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "com.miui.player.playstatechanged"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v5, "com.miui.player.responselyric"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "com.miui.player"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 276
    .local v1, "musicContext":Landroid/content/Context;
    const-string v4, "MiuiMusic"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiPlayerPreference:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "musicContext":Landroid/content/Context;
    :goto_3
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    .line 282
    return-void

    .line 237
    :cond_5
    const-string v4, "enableProgress"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_0

    :cond_6
    move v4, v6

    .line 264
    goto :goto_1

    :cond_7
    move v5, v6

    .line 265
    goto :goto_2

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MusicControlScreenElement"

    const-string v5, "fail to get MiuiMusic preference"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method static synthetic access$000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->updateActivePlayerType()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lmiui/maml/elements/MusicControlScreenElement;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    return-void
.end method

.method static synthetic access$1200(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->isMusicPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    return v0
.end method

.method static synthetic access$1400(Lmiui/maml/elements/MusicControlScreenElement;ZZ)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiPlayerPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1600(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    return-void
.end method

.method static synthetic access$1800(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    return v0
.end method

.method static synthetic access$1900(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestLyric()V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    return-object v0
.end method

.method static synthetic access$2000(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestProgress()V

    return-void
.end method

.method static synthetic access$2100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    return-object v0
.end method

.method static synthetic access$2200(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsSystemPlayer:Z

    return v0
.end method

.method static synthetic access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckMusicStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    return-void
.end method

.method static synthetic access$2500(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2600(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    return v0
.end method

.method static synthetic access$2800(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2802(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2900(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V

    return-void
.end method

.method static synthetic access$3000(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ImageScreenElement;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    return-object v0
.end method

.method static synthetic access$3200(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3300(Lmiui/maml/elements/MusicControlScreenElement;)J
    .locals 2
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$3302(Lmiui/maml/elements/MusicControlScreenElement;J)J
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    return-wide p1
.end method

.method static synthetic access$3314(Lmiui/maml/elements/MusicControlScreenElement;J)J
    .locals 2
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iget-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$3400(Lmiui/maml/elements/MusicControlScreenElement;)J
    .locals 2
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$3402(Lmiui/maml/elements/MusicControlScreenElement;J)J
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$3500(Lmiui/maml/elements/MusicControlScreenElement;)J
    .locals 2
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-wide v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$3600(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$3700(Lmiui/maml/elements/MusicControlScreenElement;)I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    return v0
.end method

.method static synthetic access$3712(Lmiui/maml/elements/MusicControlScreenElement;I)I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iget v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    return v0
.end method

.method static synthetic access$3800(Lmiui/maml/elements/MusicControlScreenElement;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lmiui/maml/elements/MusicControlScreenElement;)[I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    return v0
.end method

.method static synthetic access$4000(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$4100(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$4200(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$4300(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$4400(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$4500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$4600(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$4700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$4800(Lmiui/maml/elements/MusicControlScreenElement;)I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5002(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFreezeState:Z

    return p1
.end method

.method static synthetic access$600(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    return-void
.end method

.method static synthetic access$700(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetMusicProgress()V

    return-void
.end method

.method static synthetic access$800(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V

    return-void
.end method

.method private dispatchMediaKey(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1154
    const-string v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMediaKey: player type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", player package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    if-nez p3, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v2

    .line 1159
    :cond_1
    const/4 v0, 0x0

    .line 1160
    .local v0, "event":Landroid/view/KeyEvent;
    const-string v3, "music_prev"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1161
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "event":Landroid/view/KeyEvent;
    const/16 v3, 0x58

    invoke-direct {v0, p1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1167
    .restart local v0    # "event":Landroid/view/KeyEvent;
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1171
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1174
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1175
    const/4 v2, 0x1

    goto :goto_0

    .line 1162
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "music_next"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1163
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "event":Landroid/view/KeyEvent;
    const/16 v3, 0x57

    invoke-direct {v0, p1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .restart local v0    # "event":Landroid/view/KeyEvent;
    goto :goto_1

    .line 1164
    :cond_4
    const-string v3, "music_play"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "music_pause"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1165
    :cond_5
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "event":Landroid/view/KeyEvent;
    const/16 v3, 0x55

    invoke-direct {v0, p1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .restart local v0    # "event":Landroid/view/KeyEvent;
    goto :goto_1
.end method

.method private findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    .locals 4
    .param p1, "g"    # Lmiui/maml/elements/ElementGroup;

    .prologue
    .line 285
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .line 286
    .local v2, "se":Lmiui/maml/elements/ScreenElement;
    instance-of v3, v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v3, :cond_1

    .line 287
    check-cast v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    .line 294
    .end local v2    # "se":Lmiui/maml/elements/ScreenElement;
    :goto_0
    return-object v2

    .line 288
    .restart local v2    # "se":Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v3, v2, Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 289
    check-cast v2, Lmiui/maml/elements/ElementGroup;

    .end local v2    # "se":Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v2}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    .line 290
    .local v1, "ret":Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 291
    goto :goto_0

    .line 294
    .end local v1    # "ret":Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getActivePlayerInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 589
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v9, v4, v10, v11, v12}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 592
    .local v6, "mediaReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move-object v5, v8

    .line 616
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "mediaReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v5

    .line 597
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "mediaReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-static {p1}, Landroid/app/ExtraActivityManager;->getPackageNameListOrderByReceivePriority(Landroid/content/Context;)Landroid/app/ExtraActivityManager$PackageNameList;

    move-result-object v7

    .line 598
    .local v7, "runningActivities":Landroid/app/ExtraActivityManager$PackageNameList;
    if-eqz v7, :cond_2

    iget-object v9, v7, Landroid/app/ExtraActivityManager$PackageNameList;->mOrderList:Ljava/util/List;

    if-eqz v9, :cond_2

    iget-object v9, v7, Landroid/app/ExtraActivityManager$PackageNameList;->mOrderList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_3

    :cond_2
    move-object v5, v8

    .line 599
    goto :goto_0

    .line 603
    :cond_3
    iget-object v9, v7, Landroid/app/ExtraActivityManager$PackageNameList;->mOrderList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 604
    .local v0, "activity":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 605
    .local v5, "media":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_5

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_5

    sget-object v9, Lmiui/maml/elements/MusicControlScreenElement;->SUPPORT_PLAYER_LIST:Ljava/util/ArrayList;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_0

    .end local v0    # "activity":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "media":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object v5, v8

    .line 612
    goto :goto_0

    .line 613
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "mediaReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "runningActivities":Landroid/app/ExtraActivityManager$PackageNameList;
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v5, v8

    .line 616
    goto :goto_0
.end method

.method private innerPause()V
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 994
    :cond_0
    return-void
.end method

.method private innerResume()V
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1000
    :cond_0
    return-void
.end method

.method private isMusicPlaying()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 530
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/util/AudioOutputHelper;->getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 531
    .local v1, "activeReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 532
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    .local v0, "activePlayer":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 534
    iget-boolean v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsSystemPlayer:Z

    if-eqz v3, :cond_1

    .line 535
    const-string v2, "com.miui.player:remote"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 542
    .end local v0    # "activePlayer":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 538
    .restart local v0    # "activePlayer":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private notifyMiuiPlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1138
    const/4 v0, 0x0

    .line 1139
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "music_play"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "music_pause"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1147
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1148
    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1151
    :cond_2
    return-void

    .line 1141
    :cond_3
    const-string v1, "music_prev"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1142
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1143
    :cond_4
    const-string v1, "music_next"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1144
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private onMusicStateChange(Z)V
    .locals 1
    .param p1, "playing"    # Z

    .prologue
    .line 305
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFreezeState:Z

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(ZZ)V

    .line 308
    :cond_0
    return-void
.end method

.method private onMusicStateChange(ZZ)V
    .locals 6
    .param p1, "playing"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    if-ne p1, v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 316
    :cond_0
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 317
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v1, :cond_1

    .line 318
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz p1, :cond_5

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-virtual {v5, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 321
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 322
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    if-nez p1, :cond_6

    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 325
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    sget-object v2, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-eq v1, v2, :cond_7

    move v0, v3

    .line 326
    .local v0, "showAlbum":Z
    :goto_3
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/TextScreenElement;->show(Z)V

    .line 329
    :cond_2
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v1, :cond_3

    .line 330
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/ImageScreenElement;->show(Z)V

    .line 332
    :cond_3
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-eqz v1, :cond_4

    .line 333
    if-eqz p1, :cond_8

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    sget-object v2, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->MIUI:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-ne v1, v2, :cond_8

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    .line 335
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    :cond_4
    :goto_4
    if-eqz p1, :cond_9

    iget v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFrameRate:F

    :goto_5
    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 341
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    .line 342
    const-string v1, "MusicControlScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music state change: playing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", show album="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 318
    .end local v0    # "showAlbum":Z
    :cond_5
    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_6
    move v1, v4

    .line 322
    goto :goto_2

    :cond_7
    move v0, v4

    .line 325
    goto :goto_3

    .line 337
    .restart local v0    # "showAlbum":Z
    :cond_8
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 340
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 636
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, "requestIntent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->safeSendStickyBroadcast(Landroid/content/Intent;)V

    .line 638
    return-void
.end method

.method private requestLyric()V
    .locals 2

    .prologue
    .line 726
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.requestlyric"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v0, "requestLyric":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->safeSendBroadcast(Landroid/content/Intent;)V

    .line 728
    return-void
.end method

.method private requestProgress()V
    .locals 2

    .prologue
    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.requestprogress"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v0, "requestProgress":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->safeSendBroadcast(Landroid/content/Intent;)V

    .line 733
    return-void
.end method

.method private resetLyric()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 867
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_0

    .line 868
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    .line 869
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    .line 870
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    .line 871
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    .line 872
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 878
    :cond_0
    return-void
.end method

.method private resetMusicProgress()V
    .locals 5

    .prologue
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    .line 854
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-eqz v0, :cond_0

    .line 855
    iput-wide v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDuration:J

    .line 856
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 857
    iput-wide v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    .line 858
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-wide v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 860
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_1

    .line 861
    const/high16 v0, -0x80000000

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 862
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 864
    :cond_1
    return-void
.end method

.method private safeRegisterReceiver()V
    .locals 7

    .prologue
    .line 1018
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    if-eqz v2, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1021
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 1023
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1024
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v1, "requestIntent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->safeSendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1026
    .end local v1    # "requestIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private safeSendBroadcast(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 737
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicControlScreenElement"

    const-string v2, "send broadcast fail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private safeSendStickyBroadcast(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 746
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicControlScreenElement"

    const-string v2, "send sticky broadcast fail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private safeUnregisterReceiver()V
    .locals 3

    .prologue
    .line 1033
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    if-nez v1, :cond_0

    .line 1043
    :goto_0
    return-void

    .line 1036
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 1038
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupButton(Lmiui/maml/elements/ButtonScreenElement;)V
    .locals 0
    .param p1, "button"    # Lmiui/maml/elements/ButtonScreenElement;

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 300
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    .line 302
    :cond_0
    return-void
.end method

.method private updateActivePlayerType()V
    .locals 8

    .prologue
    .line 552
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lmiui/maml/elements/MusicControlScreenElement;->getActivePlayerInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 553
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    .line 554
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackage:Ljava/lang/String;

    .line 556
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 557
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerNameVar:Lmiui/maml/util/IndexedStringVariable;

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 558
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerNameVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 561
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    .line 562
    .local v3, "preType":Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
    sget-object v4, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->NONE:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    .line 563
    .local v4, "type":Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
    iget-boolean v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsSystemPlayer:Z

    if-eqz v5, :cond_4

    .line 564
    sget-object v4, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->MIUI:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    .line 575
    :goto_0
    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    .line 576
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerTypeVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v5, :cond_2

    .line 577
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerTypeVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    invoke-virtual {v6}, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->ordinal()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 580
    :cond_2
    sget-object v5, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-ne v3, v5, :cond_3

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    sget-object v6, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->MIUI:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;

    if-eqz v5, :cond_3

    .line 581
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 583
    :cond_3
    return-void

    .line 566
    :cond_4
    if-eqz v0, :cond_5

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_6

    :cond_5
    const/4 v2, 0x0

    .line 567
    .local v2, "packageName":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_7

    .line 568
    sget-object v4, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->NONE:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    goto :goto_0

    .line 566
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_6
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 569
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_7
    const-string v5, "com.miui.player"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 570
    sget-object v4, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->MIUI:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    goto :goto_0

    .line 572
    :cond_8
    sget-object v4, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    goto :goto_0
.end method

.method private updateAlbum(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 641
    const-string v4, "track"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "title":Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "artist":Ljava/lang/String;
    const-string v4, "album"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "album":Ljava/lang/String;
    const-string v4, "tmp_album_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "tempAlbumPath":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 646
    const-string v4, "MusicControlScreenElement"

    const-string v5, "KEY_TEMP_ALBUM_PATH is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    const-string v4, "MusicControlScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAlbum: title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", artist="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", album="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-direct {p0, v3, v1, v0, v2}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;
    .param p4, "tempAlbumPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 655
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v1, p1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v1, p2}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 660
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    if-eqz v1, :cond_1

    .line 661
    const-string v0, ""

    .line 662
    .local v0, "trackInfo":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 663
    move-object v0, p2

    .line 669
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 673
    .end local v0    # "trackInfo":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v1, :cond_3

    .line 674
    if-eqz p4, :cond_6

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {p3, v1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {p2, v1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 676
    :cond_2
    const-string v1, "MusicControlScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load album: album="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", artist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iput-object p3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    .line 678
    iput-object p2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    .line 679
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;

    invoke-direct {v1, p0, v7}, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;-><init>(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicControlScreenElement$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v4

    aput-object p3, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v1, v2}, Lmiui/maml/elements/MusicControlScreenElement$LoadAlbumAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 687
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    .line 688
    return-void

    .line 664
    .restart local v0    # "trackInfo":Ljava/lang/String;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 665
    move-object v0, p1

    goto :goto_0

    .line 667
    :cond_5
    const-string v1, "%s   %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 681
    .end local v0    # "trackInfo":Ljava/lang/String;
    :cond_6
    if-nez p4, :cond_7

    .line 682
    iput-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 684
    :cond_7
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v2, v1}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method private updateLyric(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 754
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-nez v2, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    const-string v2, "lyric_status"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 759
    .local v1, "lyricStatus":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 760
    const-string v2, "MusicControlScreenElement"

    const-string v3, "update lyric: status not success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    :cond_2
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 766
    const-string v2, "lyric"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 767
    .local v0, "lyricArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v3, "{lyric}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLyric: lyricArr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_3

    const-string v2, "null"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 771
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    .line 772
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 773
    const-string v2, "lyric_time"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    goto :goto_0

    .line 767
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not null, size="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateMusicProgress(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 777
    iget-boolean v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-nez v9, :cond_0

    .line 851
    :goto_0
    return-void

    .line 781
    :cond_0
    const-string v9, "duration"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 782
    .local v2, "duration":J
    const-string v9, "position"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 783
    .local v5, "position":J
    const-string v9, "time_stamp"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 784
    .local v7, "timeStamp":J
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-ltz v9, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_2

    .line 785
    :cond_1
    const-string v9, "MusicControlScreenElement"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update progress: bad extra. KEY_DURATION="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", KEY_POSITION="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", KEY_TIME_STAMP="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 790
    :cond_2
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetMusicProgress()V

    .line 793
    iput-wide v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDuration:J

    .line 794
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/util/IndexedNumberVariable;

    long-to-double v10, v2

    invoke-virtual {v9, v10, v11}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 795
    iput-wide v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    .line 796
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-wide v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    long-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    .line 800
    iget-boolean v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_b

    .line 801
    const/high16 v9, -0x80000000

    iput v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 802
    const-wide/16 v0, 0x0

    .line 803
    .local v0, "curLineProgress":D
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    .line 804
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    .line 806
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_7

    .line 807
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    aget v9, v9, v4

    int-to-long v9, v9

    iget-wide v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    .line 808
    iget v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_3

    .line 809
    add-int/lit8 v9, v4, -0x1

    iput v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 810
    iget v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    if-ltz v9, :cond_3

    .line 811
    iget-wide v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    iget-object v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    iget v12, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget v11, v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    long-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v9, v11

    iget-object v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    aget v11, v11, v4

    iget-object v12, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    iget v13, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget v12, v12, v13

    sub-int/2addr v11, v12

    int-to-double v11, v11

    div-double v0, v9, v11

    .line 815
    :cond_3
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 816
    :cond_5
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTimeArray:[I

    aget v9, v9, v4

    int-to-long v9, v9

    iget-wide v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_6

    .line 817
    iput v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 818
    add-int/lit8 v9, v4, -0x1

    if-ltz v9, :cond_4

    .line 819
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    add-int/lit8 v12, v4, -0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 822
    :cond_6
    add-int/lit8 v9, v4, -0x1

    if-ltz v9, :cond_4

    .line 823
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    add-int/lit8 v12, v4, -0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 827
    :cond_7
    iget v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_8

    .line 828
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    .line 832
    :cond_8
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_9

    .line 833
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 835
    :cond_9
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_a

    .line 836
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 839
    :cond_a
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v9, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 840
    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/util/IndexedStringVariable;

    iget v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    if-ltz v9, :cond_c

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    iget v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    aget-object v9, v9, v11

    :goto_3
    invoke-virtual {v10, v9}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 841
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/util/IndexedStringVariable;

    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 842
    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/util/IndexedStringVariable;

    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 843
    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/util/IndexedStringVariable;

    iget v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_d

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    iget v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v11, v11, -0x1

    aget-object v9, v9, v11

    :goto_4
    invoke-virtual {v10, v9}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 844
    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/util/IndexedStringVariable;

    iget v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v9, v9, 0x1

    if-ltz v9, :cond_e

    iget v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v9, v9, 0x1

    iget-object v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    array-length v11, v11

    if-ge v9, v11, :cond_e

    iget-object v9, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    iget v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCurrentLineNumber:I

    add-int/lit8 v11, v11, 0x1

    aget-object v9, v9, v11

    :goto_5
    invoke-virtual {v10, v9}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 847
    .end local v0    # "curLineProgress":D
    .end local v4    # "i":I
    :cond_b
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    .line 849
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v9

    invoke-virtual {v9}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 850
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v9

    invoke-virtual {v9}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    iget v11, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 840
    .restart local v0    # "curLineProgress":D
    .restart local v4    # "i":I
    :cond_c
    const/4 v9, 0x0

    goto :goto_3

    .line 843
    :cond_d
    const/4 v9, 0x0

    goto :goto_4

    .line 844
    :cond_e
    const/4 v9, 0x0

    goto :goto_5
.end method

.method private updatePlayerState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1111
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    sget-object v5, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->MIUI:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-ne v4, v5, :cond_5

    move v0, v2

    .line 1112
    .local v0, "miuiActive":Z
    :goto_0
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/TextScreenElement;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v4}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    move v1, v2

    .line 1115
    .local v1, "needRequestAlbum":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1116
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V

    .line 1119
    :cond_3
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    sget-object v3, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-ne v2, v3, :cond_7

    .line 1120
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 1121
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetMusicProgress()V

    .line 1135
    :cond_4
    :goto_2
    return-void

    .end local v0    # "miuiActive":Z
    .end local v1    # "needRequestAlbum":Z
    :cond_5
    move v0, v3

    .line 1111
    goto :goto_0

    .restart local v0    # "miuiActive":Z
    :cond_6
    move v1, v3

    .line 1112
    goto :goto_1

    .line 1123
    .restart local v1    # "needRequestAlbum":Z
    :cond_7
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricArray:[Ljava/lang/String;

    if-nez v2, :cond_8

    .line 1124
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestLyric()V

    .line 1126
    :cond_8
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-eqz v2, :cond_4

    .line 1127
    iget-wide v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPosition:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    .line 1128
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestProgress()V

    goto :goto_2

    .line 1130
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLastUpdateTime:J

    .line 1131
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1004
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThread:Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThread:Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->handleInnerPause(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->access$4900(Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;Landroid/os/Message;)V

    .line 1006
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThread:Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->quit()Z

    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThreadStarted:Z

    .line 1008
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    .line 1010
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1012
    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 1014
    :cond_1
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 1015
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 947
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 949
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThreadStarted:Z

    if-nez v1, :cond_0

    .line 951
    :try_start_0
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;

    const-string v2, "music_control_handler_thread"

    invoke-direct {v1, p0, v2}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;-><init>(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThread:Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;

    .line 952
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThread:Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;

    invoke-virtual {v1}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->start()V

    .line 953
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThreadStarted:Z

    .line 954
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThread:Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;

    invoke-virtual {v2}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandlerThread:Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 961
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 963
    :cond_1
    return-void

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1047
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1052
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->updateActivePlayerType()V

    .line 1053
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsSystemPlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    sget-object v1, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackage:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lmiui/maml/elements/MusicControlScreenElement;->dispatchMediaKey(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1059
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0xbb8

    const/4 v1, 0x1

    .line 1065
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsSystemPlayer:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    sget-object v3, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-eq v2, v3, :cond_4

    .line 1066
    :cond_0
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->notifyMiuiPlayer(Ljava/lang/String;)V

    .line 1073
    :cond_1
    const/4 v0, 0x0

    .line 1074
    .local v0, "playing":Z
    const-string v2, "music_pause"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1075
    const/4 v0, 0x0

    .line 1084
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(ZZ)V

    .line 1085
    iput-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFreezeState:Z

    .line 1086
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUnfreezeStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1087
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUnfreezeStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1089
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsSystemPlayer:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 1090
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckMusicStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1091
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    sget-object v3, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-ne v2, v3, :cond_3

    .line 1093
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckMusicStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1097
    .end local v0    # "playing":Z
    :cond_3
    :goto_1
    return v1

    .line 1068
    :cond_4
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackage:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v2}, Lmiui/maml/elements/MusicControlScreenElement;->dispatchMediaKey(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1069
    const/4 v1, 0x0

    goto :goto_1

    .line 1076
    .restart local v0    # "playing":Z
    :cond_5
    const-string v2, "music_play"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1077
    const/4 v0, 0x1

    .line 1078
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->updatePlayerState()V

    goto :goto_0

    .line 1079
    :cond_6
    const-string v2, "music_prev"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "music_next"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1080
    :cond_7
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 1081
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetMusicProgress()V

    .line 1082
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 966
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 967
    if-eqz p1, :cond_0

    .line 968
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->innerResume()V

    .line 969
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    .line 974
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->innerPause()V

    .line 972
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 978
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 979
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->innerPause()V

    .line 980
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 981
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 985
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 986
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->innerResume()V

    .line 987
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    .line 988
    return-void
.end method
